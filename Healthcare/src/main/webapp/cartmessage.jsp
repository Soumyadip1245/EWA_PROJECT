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
		  title: "Added",
		  text: "<%=message%>",
		  icon: "success",
		  timer: 800
		});
	</script>
	</body>
	</html>
	<%
	session.removeAttribute("message");
}
%>