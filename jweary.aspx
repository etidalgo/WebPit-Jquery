<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>HTML Form Elements</title>
		 <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
		 <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/themes/smoothness/jquery-ui.css" />
		 <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/jquery-ui.min.js"></script>
		 <script src="utils.js"></script>
 
	<script>
	$(document).ready(
		function() { 
			$(".datepicker").datepicker();
			$("#milestone").on(
				"change",
				{ },
				function( eventObject ) {
					// console.log("Date changed");
				});

			$("#password").on(
				"change",
				{ prop: "value" },
				function( eventObject ) {
					if ( CheckPasswordRequirements(eventObject.target.value) ) {
					} else {
					}
					// console.log("password changed");
				});
			
		});
	</script>
	</head>
	<body>
		<form name="HTMLFormElements" action="jweary.aspx" method="post" id="HTMLFormElements">
			<table border="1" cellpadding="5">
				<!-- ...in a big HTML table. -->
				<tr>
					<td>
            Username:<br />
						<input type="text" name="username" id="username" size="15" />
					</td>
				</tr>
				<tr>
					<td>
            Password:<br />
						<input type="password" name="password" id="password" size="15" />
					</td>
				</tr>
				<tr>
					<td>
            Milestone Date:<br />
						<input class="datepicker" type="text" name="milestone" id="milestone" />
					</td>
				</tr>				
				<tr>
					<td>
            TextArea Comment:<br />
						<textarea cols="40" name="comments" id="comments" rows="6">Comments...</textarea>
					</td>
				</tr>
				<tr>
					<td>
            Filename:<br />
						<input type="file" name="filename" id="filename" size="35" />
						<input type="hidden" name="hiddenField" id="hiddenField" value=
            "Hidden Field Value" />
					</td>
				</tr>
				<tr>
					<td>
            Checkbox Items:<br />
						<input type="checkbox" name="checkboxes[]" value=
            "cb1" />Checkbox 1 
						<input type="checkbox" name="checkboxes[]"
            value="cb2" />Checkbox 2 
						<input type="checkbox" name=
            "checkboxes[]" value="cb3" checked="checked" />Checkbox 3
					</td>
				</tr>
				<tr>
					<td>
            Radio Items:<br />
						<input type="radio" name="radioval" id="radioval1" value="rd1" />radio 1
						<input type="radio" name="radioval" id="radioval2" value="rd2" checked=
            "checked" />radio 2 
						<input type="radio" name="radioval" id="radioval3" value="rd3" />radio 3
					</td>
				</tr>
				<tr>
					<td>
            Multiple Select Values<br />
						<select multiple="multiple" name="multipleselect[]"
            size="4">
							<option value="ms1">
                Selection Item 1
							</option>
							<option value="ms2">
                Selection Item 2
							</option>
							<option value="ms3">
                Selection Item 3
							</option>
							<option value="ms4" selected="selected">
                Selection Item 4
							</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>
            Dropdown:<br />
						<select name="dropdown" id="dropdown">
							<option value="dd1">
                Drop Down Item 1
							</option>
							<option value="dd2">
                Drop Down Item 2
							</option>
							<option value="dd3" selected="selected">
                Drop Down Item 3
							</option>
							<option value="dd4">
                Drop Down Item 4
							</option>
							<option value="dd5">
                Drop Down Item 5
							</option>
							<option value="dd6">
                Drop Down Item 6
							</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>
						<input type="reset" name="submitbutton" value="cancel" /> 
						<input class="submit" type="submit" name="submitbutton" value="submit" />
					</td>
				</tr>
			</table>
		</form>
<%
dim fname
fname=Request.Form("username")
If fname<>"" Then
       Response.Write("Hello " & fname & "!")
End If
%>		
	</body>
</html>