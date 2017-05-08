<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script type = "text/javascript" 
   src = "https://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
<script type = "text/javascript"
   src = "https://ajax.cdnjs.com/ajax/libs/underscore.js/1.1.4/underscore-min.js"></script>
<script type = "text/javascript"
   src = "https://ajax.cdnjs.com/ajax/libs/backbone.js/0.3.3/backbone-min.js"></script>
   
   <script type = "text/template" id = "OurTemplate" >

   <span> Vishal Here </span>

   </script>
   
   <script type = "text/javascript">
       MyModel = Backbone.Model.extend ({
           
    	   defaults : {
               "title": "Hello",
               "description": "Welcome to TutorialsPoint"
            },
    	   initialize: function() {
               document.write("Welcome to TutorialsPoint..");
               
            }
         });
        
       
  MyView = Backbone.View.extend ({
           
    	   defaults : {
              
            },
           
            template: _.template($("#OurTemplate").html()),
            
    	   initialize: function() {
    		  
    		   console.log(this.el)
               /* document.write("Welcome to TutorialsPoint.."); */
               this.render();
               
            },
            
            render: function(){

            	 this.el.html(this.template);

             }
         });
        
</script>

<script>

$( document ).ready(function() {
	/*  var mymodel = new MyModel(); */
	
	var myView = new MyView({el:$("#View")});
	
	 /* alert(mymodel.get("title")); */
});

</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%-- <h1>Title : ${title}</h1>
<h1>Message : ${message}</h1> --%>

<div id = "View">

</div>

hello Guys
</body>
</html>