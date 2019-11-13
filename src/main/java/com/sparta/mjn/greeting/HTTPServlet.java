package com.sparta.mjn.greeting;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/httpChoice")
public class HTTPServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }

    protected void processRequest(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = "WEB-INF/JSPs/http.jsp";
        resp.setContentType("text/html");
        String param = req.getParameter("control");
        if(param != null){
            if(param.equals("headers")){
                setHeaderAttributes(req);
                path = "WEB-INF/JSPs/headerInfo.jsp";
            }else if(param.equals("paths")){
                setAttributes(req);
                path = "WEB-INF/JSPs/requestInfo.jsp";
            }
        }
        RequestDispatcher requestDispatcher = req.getRequestDispatcher(path);
        requestDispatcher.forward(req, resp);
    }

    private void setHeaderAttributes(HttpServletRequest req) {
        Map<String,String> myHeaders = new HashMap<>();
        Enumeration headerNames = req.getHeaderNames();
        while (headerNames.hasMoreElements()){
            String key = (String) headerNames.nextElement();
            String value = req.getHeader(key);
            myHeaders.put(key, value);
        }
        req.setAttribute("theHeaderValues",myHeaders);
    }

    private void setAttributes(HttpServletRequest req){
        req.setAttribute("method", req.getMethod());
        req.setAttribute("protocol", req.getProtocol());
        req.setAttribute("serverName", req.getServerName());
        req.setAttribute("serverPath", req.getServletPath());
    }

}
