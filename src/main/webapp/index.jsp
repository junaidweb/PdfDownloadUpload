<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PDF Upload and Download</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f4f4f4;
}

.container {
	max-width: 600px;
	margin: 50px auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
	color: #333;
}

form {
	margin-top: 20px;
}

input[type="file"], input[type="text"], input[type="submit"] {
	display: block;
	width: 100%;
	margin-bottom: 10px;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type="submit"] {
	background-color: #4caf50;
	color: #fff;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
	<div class="container">
		<h2>PDF Upload and Download</h2>
		<form action="FileUploadServlet" method="post"
			enctype="multipart/form-data">
			<input type="file" name="pdfFile" accept=".pdf"> <input
				type="submit" value="Upload PDF">
		</form>
		<h3>
			<%
			if (request.getParameter("message") != null) {
			%>
			<%=request.getParameter("message")%>
			<%
			}
			%>
		</h3>
		<form action="FileDownloadServlet" method="get">
			<input type="text" name="pdf" placeholder="Enter Name Of PDF">
			<input type="submit" value="Download PDF">
		</form>
	</div>
</body>
</html>