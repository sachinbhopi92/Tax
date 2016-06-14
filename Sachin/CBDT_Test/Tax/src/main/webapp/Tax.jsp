<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="./validate.js"></script>
</head>
<body>
	<form method="post" onsubmit="return Validate()" action="TaxData.jsp">
		<fieldset style="width: 400px;">
			<legend>Personal Information</legend>
			<div id="errorDiv"></div>
			<table>
				<tr>
					<td><font color='red'>*</font>Name</td>
					<td><input type="text" name="name" id="name"></td>
				</tr>
				<tr>
					<td><font color='red'>*</font>Address</td>
					<td><textarea rows="4" cols="21" name="address" id="address"></textarea></td>
				</tr>
				<tr>
					<td><font color='red'>*</font>PAN</td>
					<td><input type="text" name="pan" id="pan"></td>
				</tr>
				<tr>
					<td><font color='red'>*</font>Date Of Birth</td>
					<td><input type="date" name="dob" id="dob"></td>
				</tr>
				<tr>
					<td><font color='red'>*</font>Assessment Year</td>
					<td><input type="number" name="ayear" id="ayear"></td>
				</tr>
				<tr>
					<td><font color='red'>*</font>Income</td>
					<td><input type="number" name="income" id="income"></td>
				</tr>
				<tr>
					<td><font color='red'>*</font>TDS</td>
					<td><input type="number" name="tds" id="tds"></td>
				</tr>
				<tr>
					<td><font color='red'>*</font>Tax Deducted</td>
					<td><input type="number" name="taxd" id="taxd"></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Save">
						&nbsp;&nbsp;&nbsp;&nbsp; <input type="reset" value="Cancel"></td>
				</tr>
			</table>
		</fieldset>
	</form>
</body>
</html>