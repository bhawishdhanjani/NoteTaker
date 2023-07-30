<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
	<div class="container-fluid p-0 m-0">
  		<%@include file="navbar.jsp" %>
	</div>
	<div class="container-fluid p-40 m-0" >
    	<h1>Edit your note</h1>
    	<%
    	int noteId = Integer.parseInt(request.getParameter("note_id").trim());
    	Session hibSession = FactoryProvider.getFactory().openSession();
    	Note  note = (Note)hibSession.get(Note.class, noteId);
    	%>
    	
		<form action="UpdateServlet" method="post" >
			<input value="<%=note.getId() %>" name="noteId" type="hidden">
		    <div class="mb-3">
		      <label for="title" class="form-label" >Note Title</label>
		      <input type="text" value="<%=note.getTitle()%>" class="form-control" name="title" required id="title" placeholder="Enter Here">
		    </div>
		    <div class="mb-3">
		      <label for="content" class="form-label">Note Content</label>
		      <textarea id="content"  maxlength="1400" required class="form-control" name="content" placeholder="Enter your content here.."><%=note.getContent().trim() %></textarea>
		    </div>
		    <div class="container text-center">
		      <button type="submit" class="btn btn-success">Save Note</button>
		
		    </div>
		</form>
	    	
    </div>

</body>
</html>