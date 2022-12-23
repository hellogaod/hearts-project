package com.base.saas.hearts.filter;

import com.base.saas.userinfo.AppUserContextUtil;
import org.springframework.stereotype.Component;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;

/**
 * 当前类的作用：当前过滤器的doFilter方法的request实例对象生命周期始终存在于当前项目，所以通过该request对象获取app-UserToken
 */
@Component
public class ContextFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain chain) {
        try {

            AppUserContextUtil.setHttpServletRequest((HttpServletRequest)request);

            chain.doFilter(request, response);
        } catch (Exception e) {
            e.printStackTrace();

        }
    }

    @Override
    public void init(FilterConfig filterConfig) {
    }

    @Override
    public void destroy() {
    }

}
