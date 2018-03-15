<%@ page language="java" pageEncoding="UTF-8"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<!DOCTYPE html>  
<html>  
<head>  
<base href="<%=basePath%>">  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<link type="text/css" href="css/bootstrap.min.css" rel="stylesheet"> 

</head>  
<body>  
 	<div class="container">
 		<h1>APP信息管理平台</h1>
 		
 		<a href="denglu/backdenglu"><h4>后台管理系统入口</h4></a>
 		<a href="denglu/devdenglu"><h4>开发平台入口</h4></a>
 	
 	</div>
</body>  
<script type="text/javascript" src="js/jquery.min.js"></script>  
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>  
<script type="text/javascript">  
  
</script>  
</html>  