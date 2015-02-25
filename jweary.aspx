<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>HTML Form Elements</title>
		 <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
		 <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/themes/smoothness/jquery-ui.css" />
		 <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/jquery-ui.min.js"></script>
		 
		 <script src="utils.js"></script>
		 <link rel="stylesheet" href="stills.css" />
 
	<script>
	function validateForm() {
		var isValidate = true;
		$(".required").each(function(index){
			var input = $(this).find("input");
			if (input.val().length == 0) {
				$(this).addClass("required-field");
				isValidate = false;
			}
		});
		return isValidate;
	}
	
	function previewForm() {
		var something = "nothing";
	}

	$(document).ready(
		function() { 
			$(".datepicker").datepicker();
			$("#previousMilestone").hide();
			$("#milestone input").on(
				"change",
				{ },
				function( eventObject ) {
					// console.log("Date changed");
					// var milestone = $.datepicker.parseDate("mm/dd/yyyy", eventObject.target.value);
					var milestone = new Date(eventObject.target.value);
					if ( calculateDays(milestone) < 40 ) { // number days
						$("#previousMilestone").show();
					}
				});

			$("#password input").on(
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
		<form name="HTMLFormElements" action="jweary.aspx" method="post" id="HTMLFormElements" onsubmit="return validateForm()">
			<table border="1" cellpadding="5">
				<!-- ...in a big HTML table. -->
				<tr>
					<td id="username" class="required" >
						<label for="username">Username:</label><br />
						<input type="text" name="username" id="username" size="15" />
					</td>
				</tr>
				<tr>
					<td id="password" class="required">
						<label for="password">Password:</label><br />
						<input type="password" name="password" size="15" />
					</td>
				</tr>
				<tr>
					<td id="milestone" class="required">
						<label for="milestone">Milestone Date:</label><br />
						<input class="datepicker" type="text" name="milestone" />
					</td>
				</tr>				
				<tr>
					<td id="previousMilestone" class="field" >
						<label for="previousMilestoneField">Previous Milestone Date:</label><br />
						<input class="datepicker" type="text" name="previousMilestoneField" id="milestone" />
					</td>
				</tr>				
				<tr>
					<td id="comments" class="field" >
					<label for="comments">TextArea Comment:</label><br />
						<textarea cols="40" name="comments" rows="6">Comments...</textarea>
					</td>
				</tr>
				<tr>
					<td id="filename" class="field" >
						<label for="filename">Filename:</label><br />
						<input type="file" name="filename" size="35" />
						<input type="hidden" name="hiddenField" id="hiddenField" value="Hidden Field Value" />
					</td>
				</tr>
				<tr>
					<td id="checkboxes" class="field" >
						Checkbox Items:<br />
						<input type="checkbox" name="checkboxes[]" value="cb1" />Checkbox 1 
						<input type="checkbox" name="checkboxes[]" value="cb2" />Checkbox 2 
						<input type="checkbox" name="checkboxes[]" value="cb3" checked="checked" />Checkbox 3
					</td>
				</tr>
				<tr>
					<td id="radioboxes" class="field" >
						Radio Items:<br />
						<input type="radio" name="radioval" id="radioval1" value="rd1" />radio 1
						<input type="radio" name="radioval" id="radioval2" value="rd2" checked="checked" />radio 2 
						<input type="radio" name="radioval" id="radioval3" value="rd3" />radio 3
					</td>
				</tr>
				<tr>
					<td id="multipleselect" class="field" >
						<label for="multipleselect">Multiple Select Values</label><br />
						<select multiple="multiple" name="multipleselect[]" size="4">
							<option value="ms1">Selection Item 1</option>
							<option value="ms2">Selection Item 2</option>
							<option value="ms3">Selection Item 3</option>
							<option value="ms4" selected="selected">Selection Item 4</option>
						</select>
					</td>
				</tr>
				<tr>
					<td id="dropdown" class="field" >
						<label for="dropdown">Dropdown:</label><br />
						<select name="dropdown" >
							<option value="dd1">Drop Down Item 1</option>
							<option value="dd2">Drop Down Item 2</option>
							<option value="dd3" selected="selected">Drop Down Item 3</option>
							<option value="dd4">Drop Down Item 4</option>
							<option value="dd5">Drop Down Item 5</option>
							<option value="dd6">Drop Down Item 6</option>
						</select>
					</td>
				</tr>
				<tr>
					<td class="field" >
						More stuff to wade through<br />

					</td>
				</tr>				
				<tr>
					<td>
						<input type="reset" name="submitbutton" value="cancel" /> 
						<input class="submit" type="submit" name="submitbutton" value="submit" />
						<input type="button" value="preview" onClick="return previewForm()" />
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