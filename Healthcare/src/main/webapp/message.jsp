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
		  title: "Success",
		  text: "<%=message%>",
		  icon: "success",
		  button: "Ok",
		});
	</script>
	</body>
	</html>
	<%
	session.removeAttribute("message");
}
%>