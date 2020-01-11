<%@ page language="java" import="java.util.*,com.wlr.dao.anime" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
    <html>
      <head>
         <title>动漫推荐</title>
            <style type="text/css">      
                 body{    
        background-image: url(image/bg.png);    
        background-size:cover;  
        font-size: 16px;
     }  
        </style>  
      </head>
      
      <body>
      <%	          
        	if(session.getAttribute("list")==null)
        	{
        		%>
        		<p >对不起，没有适合您的推荐结果！</p>  		
           <%
        	}
        	%>

        <%	          
        	ArrayList<anime> list=null;
        	if(session.getAttribute("list")!=null){
        		%>
        		   <table border="1">
        		   <tr>
        		   <th>推荐动漫名称</th>
                   <th>体裁</th>
                   <th>类型</th>
                   <th>集数</th>
                   <th>评分</th>
                   <th>打分人数</th>
                   </tr>
        		<% 
        		list= (ArrayList)session.getAttribute("list");
        		int l = list.size();       
        		for(int i=0;i<l;i++){
        			anime a =(anime)list.get(i);       			
        			%>
        				<tr>
        				    					<td ><%=a.getName() %></td>  		
        				    					<td ><%=a.getGenre() %></td>  		
        				    					<td ><%=a.getType() %></td>  	
        				    					<td ><%=a.getEpisodes() %></td>  	
        				    					<td ><%=a.getRating() %></td>  	
        				    					<td ><%=a.getMembers() %></td>  	
        				</tr>
        			<%
        		}
        	}
         %>
         </table>
      </body>
    </html>


