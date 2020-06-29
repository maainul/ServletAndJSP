package com.mainul;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/sq")
public class SqServlet extends HttpServlet{
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		int k = (int)req.getAttribute("k");
		
		k = k * k;
		
		PrintWriter out = res.getWriter();
		out.println("Result of sq is ="+k);

	}
}
	
