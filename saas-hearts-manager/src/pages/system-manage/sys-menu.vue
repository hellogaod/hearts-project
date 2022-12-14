<template>
  <div>
    <el-row class="btn-box returnbtn">
      <el-button @click="returnToPage('/sys-manage/modular')">返回上一页</el-button>
    </el-row>
    <section class="component module-permission">
      <div style="display:flex">
        <el-col class="module">
          <el-row class="title">模块</el-row>
          <div class="module-tree">

            <el-tree align="left" :data="treeResource" :expand-on-click-node="false" highlight-current
                     :default-expanded-keys="[0]" node-key="menuId" ref="tree" @current-change="onCurrentNodeChange">
            <span class="custom-tree-node treeSpan" slot-scope="{ node }">
                <span class="icon">
                    <i :class="node.data.icon"></i>
                </span>
                <span class="nodeLabel">{{ node.data.menuName }}</span>
                <el-button type="text" size="mini" title='编辑节点' v-if="node.data.status==1"
                           @click="dialog.editMenu = true">
                    <i class="el-icon-edit-outline"></i>
                </el-button>
                    <el-button type="text" size="mini" title='添加同级菜单' v-if="node.data.status==1"
                               @click="dialog.addMenu = true">
                    <i class="el-icon-plus"></i>
                </el-button>
                <el-button type="text" size="mini" title='添加子级菜单'
                           v-if="node.data.status==1 && node.data.parentId =='#'"
                           @click="dialog.subMenu = true">
                    <i class="el-icon-circle-plus-outline"></i>
                </el-button>
                <el-button type="text" size="mini" title='启用' v-if="node.data.status==0" @click="enableClick($event)">
                    <i class="el-icon-caret-right"></i>
                </el-button>
                <el-button type="text" size="mini" title='停用' v-if="node.data.status==1" @click="disableClick($event)">
                    <i class="el-icon-circle-close"></i>
                </el-button>
            </span>
            </el-tree>

          </div>
        </el-col>
        <el-col style="width:350px;flex-grow:1">
          <el-row class="title">对应菜单子模块信息</el-row>
          <data-box :data="dataSet" ref="table" height="400">
            <template slot="columns">
              <el-table-column prop="menuName" label="菜单名称" :min-width="$helper.getColumnWidth(4)" align="center">
              </el-table-column>
              <el-table-column prop="parentName" label="上级菜单" :min-width="$helper.getColumnWidth(3)" align="center">
              </el-table-column>

              <el-table-column prop="desensitizeStatus" label="数据脱敏" :min-width="$helper.getColumnWidth(3)"
                               align="center">
                <template slot-scope="scope">
                  <span v-if="scope.row.desensitizeStatus === 0">否</span>
                  <span v-if="scope.row.desensitizeStatus === 1">是</span>
                </template>
              </el-table-column>

              <el-table-column prop="status" label="状态" :min-width="$helper.getColumnWidth(3)" align="center">
                <template slot-scope="scope">
                  <span v-if="scope.row.status === 0">停用</span>
                  <span v-if="scope.row.status === 1">启用</span>
                </template>
              </el-table-column>
              <el-table-column prop="url" label="菜单URL" :min-width="$helper.getColumnWidth(8)" align="center">
              </el-table-column>
              <el-table-column prop="createTime" label="创建时间" :min-width="$helper.getColumnWidth(5)" align="center">
                <template slot-scope="scope">
                  <span>{{$dateutils.dateTimeFormat(scope.row.createTime)}}</span>
                </template>
              </el-table-column>
              <el-table-column prop="updateTime" label="最后更新日期" :min-width="$helper.getColumnWidth(5)" align="center">
                <template slot-scope="scope">
                  <span>{{$dateutils.dateTimeFormat(scope.row.updateTime)}}</span>
                </template>
              </el-table-column>
              <el-table-column prop="remark" label="描述" :min-width="$helper.getColumnWidth(5)" align="center"
                               show-overflow-tooltip>
              </el-table-column>
            </template>
          </data-box>
        </el-col>
      </div>
      <el-dialog title="添加同级菜单" :center="true" :visible.sync="dialog.addMenu" width="500px"
                 @close="$refs['add-menu'].reset()" @open="$nextTick(()=>$refs['add-menu'].refresh(pidData))">
        <add-menu @close="dialog.addMenu = false" ref="add-menu" @refreshList="refreshData"></add-menu>
      </el-dialog>
      <el-dialog title="添加子级菜单" :center="true" :visible.sync="dialog.subMenu" width="500px"
                 @close="$refs['sub-menu'].reset()" @open="$nextTick(()=>$refs['sub-menu'].refresh(pidData))">
        <sub-menu @close="dialog.subMenu = false" ref="sub-menu" @refreshList="refreshData"></sub-menu>
      </el-dialog>
      <el-dialog title="编辑节点" :center="true" :visible.sync="dialog.editMenu" width="500px"
                 @close="$refs['edit-menu'].reset()" @open="$nextTick(()=>$refs['edit-menu'].refresh(pidData))">
        <edit-menu @close="dialog.editMenu = false" ref="edit-menu" @refreshList="refreshData"></edit-menu>
      </el-dialog>
    </section>
  </div>
</template>

<script lang="ts">
  import Vue from "vue";
  import Component from "vue-class-component";
  import DataForm from "~/components/common/data-form.vue";
  import DataBox from "~/components/common/data-box.vue";
  import {SysMenuService} from "~/server/services/system-manage-services/sys-menu.service";
  import {Prop, Emit, Watch} from "vue-property-decorator";
  import {Auth, Layout, Dependencies} from "~/core/decorator";
  import addMenu from "~/components/system-manage/module-operation/add-menu.vue";
  import subMenu from "~/components/system-manage/module-operation/sub-menu.vue";
  import editMenu from "~/components/system-manage/module-operation/edit-menu.vue";

  @Component({
    components: {
      DataForm,
      DataBox,
      addMenu,
      subMenu,
      editMenu
    }
  })
  @Layout("workspace")
  export default class ModulePermission extends Vue {
    @Dependencies(SysMenuService)
    private sysMenuService: SysMenuService;

    @Emit("refreshList")
    refreshList() {
    }

    @Emit("close")
    close() {
    }

    // 树所有资源
    private treeResource: Array<any> = [];
    // 当前选中的node的数据
    private nodeData: any = {};
    // 当前页面tree对象
    private tree: any = {};
    private submitLoading: Boolean = false;

    private dataSet: any = null;

    private dialog: any = {
      addMenu: false,
      subMenu: false,
      editMenu: false
    };
    private operation: Boolean = true;
    private Status: Boolean = true;
    private modulObj: any = {};
    private pidData: any = {};

    /**
     * 当前选中节点改变的时候
     */
    private onCurrentNodeChange(node) {
      this.nodeData.menuId = node.menuId;
      this.pidData = node
      this.getTable();
    }

    /**
     * 当前选中节点改变的时候，，获取表格数据
     */
    private getTable() {
      this.sysMenuService.getAllMenuDetailList({
        parentId: this.nodeData.menuId, moduleId: this.$route.params.moduleId
      }).subscribe(
        data => {
          this.dataSet = data;
        },
        ({msg}) => {
          this.$message.error(msg);
        }
      );
    }

    /**
     * 组件创建之后就开始获取全部资源数据
     */
    mounted() {
      this.refreshData();
    }

    refreshData() {
      this.tree = this.$refs.tree as any;
      let moduleId = this.$route.params.moduleId;
      this.sysMenuService.getAllMenuTree(moduleId, "").subscribe(
        data => {
          this.treeResource = data;
        },
        ({msg}) => {
          this.$message.error(msg);
        }
      );
    }

    returnToPage(path) {
      this.$router.push(path)
    }

    /**
     * 启用
     */
    enableClick(e) {
      this.$confirm('确认启用吗?', '提示', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
      }).then(() => {
        this.sysMenuService.updateMenuStatus(this.pidData.menuId, 1).subscribe(data => {
          this.$message({
            type: 'success',
            message: '启用成功!'
          })
          this.refreshData()
        }, ({msg}) => {
          this.$message.error(msg);
        })
      }).catch(() => {
      })
    }

    /**
     * 停用
     */
    disableClick(e) {
      this.$confirm('确认停用吗?', '提示', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
      }).then(() => {
        this.sysMenuService.updateMenuStatus(this.pidData.menuId, 0).subscribe(data => {
          this.$message({
            type: 'success',
            message: '停用成功!'
          })
          this.refreshData()
        }, ({msg}) => {
          this.$message.error(msg);
        })
      }).catch(() => {
      })
    }
  }

</script>

<style lang="less" scoped>
  .title {
    height: 40px;
    background: #e4e4e4;
    line-height: 40px;
    text-align: center;
    border: 1px solid #dddddd;
    font-size: 0.875rem;
    color: #333;
  }

  .btn-box {
    margin-top: 20px;
    text-align: center;
  }

  .module {
    flex-basis: 300px;
    border: 1px solid #e4e4e4;
    height: 650px;
    width: 300px;
  }

  .module-tree {
    height: 600px;
    overflow: auto;
    -ms-overflow-style: none;
    overflow: -moz-scrollbars-none;
    font-size: 14px;
  }

  .module-tree::-webkit-scrollbar {
    width: 0px;
  }

  .custom-tree-node .nodeLabel {
    width: 120px;
    display: inline-block;
    text-overflow: ellipsis;
    white-space: nowrap;
    /*overflow: hidden;*/
    line-height: 12px;
    font-size: 14px;
  }

  .icon {
    width: 15px !important;
    display: inline-block;
  }

  .returnbtn {
    height: 30px;
    margin: 0 20px 10px 20px;
    text-align: left !important;
  }

  .returnbtn button {
    padding: 8px 5px !important;
  }
</style>
