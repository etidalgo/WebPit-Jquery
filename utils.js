// 
function CheckPasswordRequirements( password ) {
	if ( password.length < 8)
		return false;
	return true;
}

 function calculateAge(birthday) { // birthday is a date
   var ageDifMs = Date.now() - birthday.getTime();
   var ageDate = new Date(ageDifMs); // miliseconds from epoch
   return Math.abs(ageDate.getUTCFullYear() - 1970);
 }
 