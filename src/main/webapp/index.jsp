<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="Connector.TwitterConnector" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="mystyle.css"> 
        <title>Insights for Twitter</title>
    </head>
	
    <body>
        <div class ="main">

                <div id="content2">
				
				<h2> Count # of Tweets </h2>
				<h3>Enter a query</h3>
                    <form action="twitterCountServlet" method="GET">
                        <input type="text" name="tQuery" size="80">
                        <input type="submit" value="Submit">
                    </form> <br/>
                    <%
                        if (request.getAttribute("finalcount") != null) {
							out.println(request.getAttribute("finalcount"));
                        }


                    %>
					
					<br/>
                </div>
				
				
				<div>
				<h2> Search for Tweets </h2>
				<h3>Enter a query</h3>
				 <form action="twitterSearchServlet" method="GET">
                        <input type="text" name="tQuery" size="80">
						<input type="text" name="tSize" size="80">
                        <input type="submit" value="Query">
                    </form> <br/>
                    <%
                        if (request.getAttribute("finalsearch") != null) {
							out.println(request.getAttribute("finalsearch"));
                        }


                    %>

				</div>

        </div>
    </body>
</html>