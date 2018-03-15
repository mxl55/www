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
<link href="fonts/font-awesome.css" rel="stylesheet">
<link href="js/style.min.css" rel="stylesheet">

</head>  
<body>  
  	<div class="middle-box text-center loginscreen  animated fadeInDown">
    <div>
        
        <h3>后台管理系统</h3>

        <form class="m-t" role="form" action="http://www.zi-han.net/theme/hplus/index.html">
            <div class="form-group">
                <input type="email" class="form-control" placeholder="用户名" required="" data-form-un="1514171070259.628">
            </div>
            <div class="form-group">
                <input type="password" class="form-control" placeholder="密码" required="" data-form-pw="1514171070259.628">
            </div>
            <button type="submit" class="btn btn-primary block full-width m-b" data-form-sbm="1514171070259.628">登 录</button>


            <p class="text-muted text-center">
                <a href="http://www.zi-han.net/theme/hplus/login.html#">
                    <small>忘记密码了？</small>
                </a>
                |
                <a href="http://www.zi-han.net/theme/hplus/register.html">注册一个新账号</a>
            </p>

        </form>
    </div>
</body>  
<script type="text/javascript" src="js/jquery.min.js"></script>  
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>  
<script type="text/javascript">  
  
</script>  
</html>  