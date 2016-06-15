<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.io.*"%>
<%
	String file = "D:\\TaxFile.xml";
	response.setContentType("application/octet-stream");
	response.setHeader("Content-Disposition", "Attachment; Filename=\"" + file + "\"");

	FileInputStream fileData = new FileInputStream(file);

	int i;
	while ((i = fileData.read()) != -1) {
		out.write(i);
	}
	fileData.close();
%>
