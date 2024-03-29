package com.cw.coc.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import com.cw.coc.wrapper.LoginWrapper;


@WebFilter("*.me")
public class EncryptFilter implements Filter {

    
    public EncryptFilter() {
    }

	
	public void destroy() {
	}

	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
	
		HttpServletRequest hRequest = (HttpServletRequest) request;
		
		LoginWrapper lw = new LoginWrapper(hRequest);
		chain.doFilter(lw, response);
	}

	
	public void init(FilterConfig fConfig) throws ServletException {

	}

}
