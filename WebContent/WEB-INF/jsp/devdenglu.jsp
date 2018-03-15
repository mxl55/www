<%@ page language="java" pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        
        <h3>APP开发平台</h3>

        <form class="m-t" role="form" action="denglu/login" method="post">
        
        	<div>
        		<span>${errors }</span>
        	</div>
            <div class="form-group">
                <input type="text" name="devcode" class="form-control" placeholder="用户名" required="" data-form-un="1514171070259.628">
            </div>
            <div class="form-group">
                <input type="password" name="devpassword" class="form-control" placeholder="密码" required="" data-form-pw="1514171070259.628">
            </div>
            <button type="submit" class="btn btn-primary block full-width m-b" data-form-sbm="1514171070259.628">登 录</button>


            <p class="text-muted text-center">
                <a href="http://www.zi-han.net/theme/hplus/login.html#">
                    <small>忘记密码了？</small>
                </a>
                |
                <a data-toggle="modal" data-target="#myModal">注册一个新账号</a>
            </p>

        </form>
    </div>
</div>

<!-- Modal -->
<form class="form-horizontal" action="denglu/add" method="post">
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
					
						<div class="form-group">
							<label class="col-sm-2 control-label">用户名</label>
							<div class="col-sm-10">
								<input type="text" name="devcode" class="form-control" placeholder="用户名">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">真实姓名</label>
							<div class="col-sm-10">
								<input type="text" name="devname" class="form-control" placeholder="真实姓名">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">密码</label>
							<div class="col-sm-10">
								<input type="password" name="devpassword" class="form-control"  placeholder="密码">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">邮箱</label>
							<div class="col-sm-10">
								<input type="email" name="devemail" class="form-control" placeholder="邮箱">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">备注</label>
							<div class="col-sm-10">
								<textarea class="form-control" name="devinfo" rows="3" placeholder="备注"></textarea>
								
							</div>
						</div>
				</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
</form>

</body>  
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>  
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>  
<script type="text/javascript">  
  
</script>  
</html>  