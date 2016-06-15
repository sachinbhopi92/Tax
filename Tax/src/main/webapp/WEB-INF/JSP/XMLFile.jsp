<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.io.*"%>
<%@page import="org.w3c.dom.*"%>
<%@page import="javax.xml.parsers.*"%>
<%@page import="javax.xml.transform.*"%>
<%@page import="javax.xml.transform.dom.*"%>
<%@page import="javax.xml.transform.stream.*"%>


<%!String name;
	String address;
	String pan;
	String dob;
	String ayear;
	String income;
	String tds;
	String taxd;%>

<%
	name = request.getParameter("name");
	address = request.getParameter("address");
	pan = request.getParameter("pan");
	dob = request.getParameter("dob");
	ayear = request.getParameter("ayear");
	income = request.getParameter("income");
	tds = request.getParameter("tds");
	taxd = request.getParameter("taxd");
	try {
		DocumentBuilderFactory builderFactory = DocumentBuilderFactory.newInstance();
		DocumentBuilder docBuilder = builderFactory.newDocumentBuilder();
		Document doc = docBuilder.newDocument();
		createXmlTree(doc, name, address, pan, dob, ayear, income, tds, taxd);

		out.println("<b>Xml File Created successfully: </b>");
	} catch (Exception e) {
		System.out.println(e);
	}
%>

<%!public void createXmlTree(Document doc, String name, String address, String pan, String dob, String ayear,
			String income, String tds, String taxd) throws Exception {
		Element root = doc.createElement("TaxPayers");
		doc.appendChild(root);

		Element nameElement = doc.createElement("Name");
		root.appendChild(nameElement);

		Text nameText = doc.createTextNode(name);
		nameElement.appendChild(nameText);

		Element addressElement = doc.createElement("Address");
		root.appendChild(addressElement);

		Text addressText = doc.createTextNode(address);
		addressElement.appendChild(addressText);

		Element panElement = doc.createElement("PAN");
		root.appendChild(panElement);

		Text panText = doc.createTextNode(pan);
		panElement.appendChild(panText);

		Element dobElement = doc.createElement("DateOfBirth");
		root.appendChild(dobElement);

		Text dobText = doc.createTextNode(dob);
		dobElement.appendChild(dobText);

		Element ayearElement = doc.createElement("AssessmentYear");
		root.appendChild(ayearElement);

		Text ayearText = doc.createTextNode(ayear);
		ayearElement.appendChild(ayearText);

		Element incomeElement = doc.createElement("Income");
		root.appendChild(incomeElement);

		Text incomeText = doc.createTextNode(income);
		incomeElement.appendChild(incomeText);

		Element tdsElement = doc.createElement("TDS");
		root.appendChild(tdsElement);

		Text tdsText = doc.createTextNode(tds);
		tdsElement.appendChild(tdsText);

		Element taxdElement = doc.createElement("TaxDeducted");
		root.appendChild(taxdElement);

		Text taxdText = doc.createTextNode(taxd);
		taxdElement.appendChild(taxdText);

		TransformerFactory factory = TransformerFactory.newInstance();
		Transformer transformer = factory.newTransformer();

		transformer.setOutputProperty(OutputKeys.INDENT, "yes");

		StringWriter sw = new StringWriter();
		StreamResult result = new StreamResult(sw);
		DOMSource source = new DOMSource(doc);
		transformer.transform(source, result);
		String xmlString = sw.toString();

		File file = new File("D:/TaxFile.xml");
		BufferedWriter bw = new BufferedWriter(new FileWriter(file));
		bw.write(xmlString);
		bw.flush();
		bw.close();

	}%>
&nbsp; &nbsp;
 <a href="DownloadFile.jsp"><b>Download XML File</b></a> 

