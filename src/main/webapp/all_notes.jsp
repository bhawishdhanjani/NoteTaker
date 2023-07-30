<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>

<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>All notes: Note Taker</title>
	<%@include file="all_js_css.jsp" %>
</head>
<body>
	<div class="container-fluid p-0 m-0">
  		<%@include file="navbar.jsp" %>
  	</div>
  	<div class="container-fluid p-40 m-0" >
  		<h1>All Notes</h1>
      <%
        Session s = FactoryProvider.getFactory().openSession();
        Query q = s.createQuery("from Note");
        List<Note> list = q.list();
        for(Note note : list){
      %>
      <div class="row">
        <div class="col-12">
          <div class="card mt-3">

            <img src="image/notes.png" style="max-width:100px" class="card-img-top m-4" alt="...">
            <div class="card-body">
              <h5 class="card-title"><%=note.getTitle()%> </h5>
              <p class="card-text"><%=note.getContent() %></p>
              <a href="DeleteServlet?note_id=<%=note.getId()%>" class="btn btn-danger">Delete</a>
              <a href="edit_note.jsp?note_id=<%=note.getId()%>" class="btn btn-primary">Update</a>
            </div>
          </div>
        </div>
      </div>


      <%
    		}
    		s.close();
    	%>
  	</div>

</body>
</html>
