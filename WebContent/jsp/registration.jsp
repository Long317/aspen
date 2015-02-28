<%@taglib prefix="s" uri="/struts-tags"%>
<h2 align="center">Registration Form</h2>
<center><s:form action="doRegistation" method="POST">
	<s:textfield name="firstName" size="50" label="First Name"></s:textfield>
	<s:textfield name="lastName" size="50" label="Last Name"></s:textfield>
	<s:textfield name="phoneNo" size="50" label="Phone Number"></s:textfield>
	<s:textfield name="email" size="50" label="Email Address"></s:textfield>
	<s:textarea name="address" cols="38" label="Address"></s:textarea>
	<s:radio list="genderList" name="gender" label="Gender"></s:radio>
	<s:submit value="Register"></s:submit>
</s:form></center>