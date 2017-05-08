<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js">
</script>
<title>Insert title here</title>
</head>
<body>

<button class="Cancel" value="Cancel" id="getlog" onclick ="onloadLog()">GET LOGS</button>


<div id= "loginfo">

</div>

						

</body>

<script>

function onloadLog(){
	

	$.ajax({
		url : "getLogTextFile",
		async: false,
	    success : function(data) {
	    	
	    	console.log(data);
		
	    	var str  = data.split("/");
	    
	    	$.each(str, function(index, itemData) {
	    		
	    		$( "#loginfo" ).append( "<p>"+ itemData +"</p>" );
	    		$( "#getlog" ).hide();
	    	})
	    	
	    
	    	
			
		},
		error : function(data) {
			alert('No log Found');
		}
	});

}

$(document).ready(function() {

	/* onloadLog(); */

})

</script>

</html>
