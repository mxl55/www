<%@ page language="java" pageEncoding="UTF-8"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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
<link rel="stylesheet" type="text/css" href="css/bootstrap-table.css"/>
<link rel="stylesheet" type="text/css" href="css/layer.css"/>

</head>  
<body>
<div class="form-inline" id="cc">
  <div class="form-group">
    <label>软件名称</label>
    <input type="text" name="softwarename" class="form-control" id="softwarename" placeholder="Jane Doe">
  </div>
  <div class="form-group">
    <label>APP在线状态</label>
    <select name="status.id" id="statusid" class="form-control">
					<option value="-1">全部</option>
					<c:forEach items="${aaa }" var="a">
						<option value="${a.id }">${a.valuename }</option>
					</c:forEach>
				</select>
  </div>
   <div class="form-group">
    <label>所在平台</label>
    <select name="flatformid.id" id="flatformid"class="form-control">
					<option value="-1">全部</option>
					<c:forEach items="${ppp }" var="p">
						<option value="${p.id }">${p.valuename }</option>
					</c:forEach>
				</select>
  </div>
  <div class="form-group">
    <label for="">一级分类</label>
    <select name="categoryleve11.categoryname" class="form-control" id="type1">
					<option value="-1">全部</option>
					<c:forEach items="${yyy }" var="y">
						<c:if test="${y.categorycode eq 'yi' }">
						<option value="${y.id }">${y.categoryname }</option>
						</c:if>
					</c:forEach>
				</select>
  </div>
  <div class="form-group">
    <label for="exampleInputEmail2">二级分类</label>
    <select name="categoryleve12.categoryname" class="form-control"  id="type2">
					
					
				</select>
  </div>
  <div class="form-group">
    <label for="exampleInputEmail2">三级分类</label>
    <select name="categoryleve13.categoryname" class="form-control"  id="type3">
					
					
				</select>
  </div>
  <button type="submit" class="btn btn-default" onclick="setCondition();">查询</button>
  <a href="#" data-toggle='modal' data-target='#xz' class="btn btn-default" >新增</a>

</div>
  	<table id="userTable" data-toggle="table" data-url="nei/dnei" class="table-striped"
	data-method="post" data-content-type="application/x-www-form-urlencoded; charset=UTF-8"
	data-id-field="id" data-toolbar="#toolbar"
	data-show-columns="true" data-show-refresh="true" data-show-toggle="true" data-show-pagination-switch="true"
	data-pagination="true" data-side-pagination="server" data-page-size="5" data-page-list="[5,10, 25, 50, 100, All]">
	<thead>
	
		<tr>
			<th data-checkbox="true"></th>
			<th data-field="softwarename">软件名称</th>
			<th data-field="apkname">APK名称</th>
			<th data-field="softwaresize">单位大小</th>
			<th data-field="flatformid.valuename">所属平台</th>
			<th data-formatter="sss">所属分类</th>
			<th data-field="status.valuename">状态</th>
			<th data-field="downloads">下载次数</th>
			<th data-field="versionid.versionno">最新版本号</th>
			<th data-formatter="opFormatter">操作</th>
		</tr>
		
	</thead>
</table>

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
<script type="text/javascript" src="js/sjld.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap-table.min.js"></script>
<script type="text/javascript" src="js/bootstrap-table-zh-CN.js"></script> 
<script type="text/javascript">  
var $table = $("#userTable");

$table.bootstrapTable({
	queryParams : function(params) {
		params["softwarename"] = $("#softwarename").val();
		params["status.id"] = $("#statusid").val();
		params["flatformid.id"] = $("#flatformid").val();
		params["categoryleve11.id"] = $("#type1").val();
		params["categoryleve12.id"] = $("#type2").val();
		params["categoryleve13.id"] = $("#type3").val();
		

		return params;
	}
});

function setCondition() {
	$table.bootstrapTable("refresh");
}

function sss (value,row,index){
	str=row.categoryleve11.categoryname+"-"+row.categoryleve12.categoryname+"-"+row.categoryleve13.categoryname;
	return str;
}

//操作列的格式化函数
function opFormatter(value,row,index){
	var str = "<div class='btn-group'> <button type='button' class='btn btn-danger'>点击操作</button> <button type='button' class='btn btn-danger dropdown-toggle' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'> <span class='caret'></span> <span class='sr-only'>Toggle Dropdown</span>  </button>";
	
	str+=" <ul class='dropdown-menu'> <li><a href='#' data-toggle='modal' data-target='#myModal'>新增版本</a></li> <li><a href='#'>修改版本</a></li> <li><a href='#'>修改</a></li> <li><a href='#'>查看</a></li> <li><a href='#'>删除</a></li> <li><a href='#'>上架</a></li> <li><a href='#'>下架</a></li> </ul></div>";
	
	return str;
}



</script>  
</html>  