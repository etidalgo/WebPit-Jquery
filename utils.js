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
 
 function calculateDays(thatday) {
	 // Date.parse(str1)
	return  Math.floor(( Date.now() - thatday ) / 86400000);	 
 }