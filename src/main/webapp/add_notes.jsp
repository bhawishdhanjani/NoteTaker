<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
	<div class="container-fluid p-0 m-0">
  		<%@include file="navbar.jsp" %>
  </div>
  <div class="container-fluid p-40 m-0" >
    <h1>Please fill your note detail</h1>
    <!-- This is Add Form  -->
    <form action="SaveNoteServlet" method="post" >
    <div class="mb-3">
      <label for="title" class="form-label">Note Title</label>
      <input type="text" class="form-control" name="title" required id="title" placeholder="Enter Here">
    </div>
    <div class="mb-3">
      <label for="content" class="form-label">Note Content</label>
      <textarea id="content" maxlength="1400" required class="form-control" name="content" placeholder="Enter your content here.."></textarea>
    </div>
    <div class="container text-center">
      <button type="submit" class="btn btn-primary">Add</button>

    </div>
  </form>

  </div>
</body>
</html>
