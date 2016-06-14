function Validate() {
	var name = $("#name").val();
	var address = $("#address").val();
	var pan = $("#pan").val();
	var dob = $("#dob").val();
	var ayear = $("#ayear").val();
	var income = $("#income").val();
	var tds = $("#tds").val();
	var taxd = $("#taxd").val();

	if (name == "") {
		$("#name").focus();
		$("#errorDiv").html("<font color='red'>Please enter your name</font>");
		return false;
	} else if (address == "") {
		$("#address").focus();
		$("#errorDiv").html(
				"<font color='red'>Please enter proper address</font>");
		return false;
	} else if (pan == "") {
		$("#pan").focus();
		$("#errorDiv").html("<font color='red'>Please enter PAN number</font>");
		return false;
	} else if (dob == "") {
		$("#dob").focus();
		$("#errorDiv").html("<font color='red'>Please select DOB</font>");
		return false;
	} else if (ayear == "") {
		$("#ayear").focus();
		$("#errorDiv").html(
				"<font color='red'>Please proper Assessment year</font>");
		return false;
	} else if (isNaN(ayear) || ayear.length < 4 || ayear.length > 4) {
		$("#ayear").focus();
		$("#errorDiv").html(
				"<font color='red'>Please proper Assessment year</font>");
		return false;
	} else if (income == "") {
		$("#income").focus();
		$("#errorDiv").html(
				"<font color='red'>Enter your proper income in number</font>");
		return false;
	} else if (tds == "") {
		$("#tds").focus();
		$("#errorDiv").html(
				"<font color='red'>Please enter tds in number</font>");
		return false;
	} else if (taxd == "") {
		$("#taxd").focus();
		$("#errorDiv")
				.html(
						"<font color='red'>Please enter tax deduction in number</font>");
		return false;
	}

}