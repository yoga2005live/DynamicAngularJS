package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.model.PersonData;

public class AngularJsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static int count;
	public AngularJsServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PersonData personData = new PersonData();
		personData.setFirstName("Mohaideen");
		personData.setLastName("Jamil");
		personData.setCounter(count+=1);
		if (count==100) count=-1;	
		String json = new Gson().toJson(personData);
		response.setContentType("application/json");
		response.getWriter().write(json);
	}
}