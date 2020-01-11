<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
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
    <center>
    <form action="servlet0" method="post">
    <table border="0">
    <tr><td align="left">用户ID</td><td align="left"><input type="text" name="userID" value="1"></td></tr>
    <tr><td align="left">推荐数目</td><td align="left"><input type="text" name="animeAmount" value="4"></td></tr>
    <tr><td colspan="2" align="center">
    <select name="recommender">
    <option value="UserBased">GenericUserBased</option>
    <option value="UserBased2">GenericBooleanPerfUserBased</option>
    <option value="ItemBased">GenericItemBased</option>
    <option value="ItemBased2">GenericBooleanPrefItemBased</option>
    <option value="ItemBased3">ItemAverage</option>
    <option value="ItemBased4">ItemUserAverage</option>
    <option value="ModelBased">SVD</option>
    </select>
    </td></tr>
    <tr><td colspan="2" align="center"><input type="submit" value="提交"></td></tr>
   
    </table>
    </form>
    </center>
  </body>
</html>