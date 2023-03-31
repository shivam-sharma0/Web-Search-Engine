<%@page import = "java.util.ArrayList"%>
<%@page import = "com.Example.SearchResult"%>

<html>
<head>
<link rel = "stylesheet" type = "text/css" href = "styles.css">
</head>
<body>
<h2>Learn Something</h2>
<form action="Search">
   <input type="text" name="keyword">
   <button type="submit">Search</button>
</form>
<div class="resultTable">
  <table >
    <tr>
     <th> Title </th>
     <th> Link </th>
     <th> Text </th>
    </tr>
    <%
    ArrayList<SearchResult>results = (ArrayList<SearchResult>)request.getAttribute("results");
    for(SearchResult result:results){
    %>
    <tr>
         <td> <%out.println(result.getTitle());%> </td>
         <td><a href="<%out.println(result.getLink());%>"><%out.println(result.getLink());%></a></td>
         <td> <%out.println(result.getText());%> </td>
        </tr>
     <%
        }
     %>
  </div>
  </table>
</body>
</html>

