package com.base.saas.manage.service.impl.enterprise;



import com.base.saas.manage.mapper.enterprise.EntModuleMapper;
import com.base.saas.manage.domain.model.ReturnMap;
import com.base.saas.manage.domain.entity.enterprise.EntMenu;
import com.base.saas.manage.domain.entity.enterprise.EntModule;
import com.base.saas.manage.domain.entity.enterprise.EntUserMenuDesensite;
import com.base.saas.manage.service.enterprise.EntMenuDesensiteService;
import com.base.saas.userinfo.UserContextUtil;
import com.base.saas.userinfo.UserInfo;
import com.base.saas.manage.mapper.enterprise.EntMenuMapper;
import com.base.saas.manage.mapper.enterprise.EntUserMenuDesensiteMapper;

import com.base.saas.util.CreateIDUtil;
import com.base.saas.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

@Service
public class EntUserMenuDesensiteServiceImpl implements EntMenuDesensiteService {
    @Autowired
    private EntUserMenuDesensiteMapper userDataPermissionMapper;

    @Autowired
    private EntModuleMapper entModuleMapper;

    @Autowired
    private EntMenuMapper entMenuMapper;


    @Override

    public List<EntModule> getUserDataPermisson(String roleId, String userId) throws Exception {

        UserInfo userInfo = UserContextUtil.getUserInfo();

        //当前企业拥有的模块
        List<EntModule> entModules = entModuleMapper.getModuleByCompanyCode(userInfo.getCompanyCode());
        Map<String, List<EntMenu>> listMap = new HashMap<>();
        entModules.stream().forEach(entModule -> listMap.put(entModule.getModuleId(), new ArrayList<>()));

        //当前角色拥有菜单信息
        List<EntMenu> entMenus = entMenuMapper.getMenusByRoleId(roleId,userId);
        //转换成树形结构
        List<EntMenu> entMenuTree = getTree(entMenus);

        entMenuTree.stream().forEach(entMenu ->
                listMap.get(entMenu.getModuleId()).add(entMenu)
        );

        return entModules.stream()
                .map(entModule -> {
                    entModule.setMenuList(listMap.get(entModule.getModuleId()));
                    return entModule;
                })
                .filter(entModule -> entModule.getMenuList() != null && entModule.getMenuList().size() > 0)
                .collect(Collectors.toList());
    }


    // 获取组织架构的树形结构
    private List<EntMenu> getTree(List<EntMenu> list) {
        List<EntMenu> tree = list.stream().
                filter(item -> "#".equals(item.getParentId()))
                .peek(
                        item -> {
                            List<EntMenu> childrens = getChildrens(item, list);
                            item.setSubMenus(childrens);
                        }
                )
                .collect(Collectors.toList());

        return tree;
    }

    private List<EntMenu> getChildrens(EntMenu root, List<EntMenu> list) {

        List<EntMenu> lists = list.stream()
                .filter(item ->
                        //筛选出下一层元素节点
                        Objects.equals(item.getParentId(), root.getMenuId())
                )
                .map(item ->
                {
                    //递归set子节点
                    List<EntMenu> childrens = this.getChildrens(item, list);
                    item.setSubMenus(childrens);
                    return item;
                })
                .collect(Collectors.toList());

        return lists;

    }


    @Override
    public ReturnMap addOrUpdateUserDataPermisson(EntUserMenuDesensite userDataPermisson) throws Exception {
        ReturnMap map = new ReturnMap();

        UserInfo userInfo = UserContextUtil.getUserInfo();
        Date now = new Date();
        userDataPermisson.setUpdateUser(userInfo.getAccount());
        userDataPermisson.setUpdateTime(now);
        userDataPermisson.setCompanyCode(userInfo.getCompanyCode());

        String id = userDataPermissionMapper.getIdByUserIdAndMenuId(userDataPermisson);

        if (StringUtil.isEmpty(id)) {//添加
            userDataPermisson.setCreateTime(new Date());
            userDataPermisson.setCreateUser(userInfo.getAccount());
            userDataPermisson.setId(CreateIDUtil.getId());
            userDataPermisson.setCompanyCode(userInfo.getCompanyCode());

            int n = userDataPermissionMapper.insertSelective(userDataPermisson);
            if (n > 0) {
                map.setCode(1);
                map.setMsg("message.system.operation.success");
            } else {
                map.setMsg("message.system.operation.fail");
            }
        } else {//修改
            userDataPermisson.setId(id);
            int n = userDataPermissionMapper.updateByPrimaryKeySelective(userDataPermisson);
            if (n > 0) {
                map.setCode(1);
                map.setMsg("message.system.operation.success");
            } else {
                map.setMsg("message.system.operation.fail");
            }
        }


        return map;
    }
}
