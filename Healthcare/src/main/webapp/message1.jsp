<%

String message = (String)session.getAttribute("message");
if(message!=null)
{
	
	%>
	<html>
	<head>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	</head>
	<body>
	<script>
	swal({
		  title: "Error",
		  text: "<%=message%>",
		  icon: "error",
		  button: "Ok",
		});
	</script>
	</body>
	</html>
	<%
	session.removeAttribute("message");
}
%>