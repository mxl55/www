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
<link rel="stylesheet" type="text/css" href="css/jquery.fileupload.css">

</head>  
<body>
<div class="container">
<h1 class="text-center">新增APP</h1>
	<form class="form-horizontal" action="nei/dadd" method="post">
		<div class="form-group">
			<label  class="col-sm-2 control-label">软件名称</label>
			<div class="col-sm-10">
				<input type="text" name="softwarename" class="form-control" placeholder="软件名称">
			</div>
		</div>
		<div class="form-group">
			<label  class="col-sm-2 control-label">APK名称</label>
			<div class="col-sm-10">
				<input type="text" name="apkname" class="form-control" placeholder="APK名称">
			</div>
		</div>
		<div class="form-group">
			<label  class="col-sm-2 control-label">支持ROM</label>
			<div class="col-sm-10">
				<input type="text" name="supportrom" class="form-control" placeholder="支持ROM">
			</div>
		</div>
		<div class="form-group">
			<label  class="col-sm-2 control-label">界面语言</label>
			<div class="col-sm-10">
				<input type="text" name="interfacelanguage" class="form-control" placeholder="界面语言">
			</div>
		</div>
		<div class="form-group">
			<label  class="col-sm-2 control-label">软件大小</label>
			<div class="col-sm-10">
				<input type="text" name="softwaresize" class="form-control" placeholder="软件大小">
			</div>
		</div>
		<div class="form-group">
			<label  class="col-sm-2 control-label">下载次数</label>
			<div class="col-sm-10">
				<input type="text" name="downloads" class="form-control" placeholder="下载次数">
			</div>
		</div>
		<div class="form-group">
			<label  class="col-sm-2 control-label">所在平台</label>
			<div class="col-sm-10">
				 <select name="flatformid.id"class="form-control">
					<option value="-1">请选择</option>
					<c:forEach items="${ppp }" var="p">
						<option value="${p.id }">${p.valuename }</option>
					</c:forEach>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label  class="col-sm-2 control-label">一级分类</label>
			<div class="col-sm-10">
				 <select name="categoryleve11.id" class="form-control" id="type1">
					<option value="-1">请选择</option>
					<c:forEach items="${yyy }" var="y">
						<c:if test="${y.categorycode eq 'yi' }">
						<option value="${y.id }">${y.categoryname }</option>
						</c:if>
					</c:forEach>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label  class="col-sm-2 control-label">二级分类</label>
			<div class="col-sm-10">
				 <select name="categoryleve12.id" class="form-control"  id="type2">
					
					
				</select>
			</div>
		</div>
		<div class="form-group">
			<label  class="col-sm-2 control-label">三级分类</label>
			<div class="col-sm-10">
				 <select name="categoryleve13.id" class="form-control"  id="type3">
					
					
				</select>
			</div>
		</div>
		<div class="form-group">
			<label  class="col-sm-2 control-label">APP状态</label>
			<div class="col-sm-10">
				<input name="" value="待审核" class="form-control" type="text" placeholder="Readonly input here…" readonly>
			</div>
		</div>
		<div class="form-group">
			<label  class="col-sm-2 control-label">应用简介</label>
			<div class="col-sm-10">
				<textarea name="appinfo" class="form-control" rows="3"></textarea>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-default">Sign in</button>
			</div>
		</div>
		  <div id="photo" style="position: absolute;right:50px;top:10px;width:150px;text-align: center;">
                		<div class="image" style="position: relative;">
                			<img src="img/a1.jpg" class="img-responsive" alt="" />
                			<div id="progress" class="progress" style="position: absolute;left:0px;top:0px;height:100%;width:100%;opacity:.5;">
						  <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">
						  </div>
						</div>
                		</div>
                		<span class="btn btn-success fileinput-button">
				        <i class="glyphicon glyphicon-plus"></i>
				        <span>上传头像...</span>
				        <!-- The file input field used as target for the file upload widget -->
				        <input id="fileupload" type="file" name="image" >
				    </span>
                </div>
                <input type="hidden" name="photo" id="pho" />
	</form>
	</div>
</body>  

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/sjld.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap-table.min.js"></script>
<script type="text/javascript" src="js/bootstrap-table-zh-CN.js"></script> 
<script type="text/javascript" src="js/jquery.ui.widget.js"></script>
<script type="text/javascript" src="js/jquery.iframe-transport.js"></script>
<script type="text/javascript" src="js/jquery.fileupload.js"></script>
<script type="text/javascript">
$(function(){
	$("#fileupload").fileupload({
		url : "nei/upload",
		dataType : "json",
		done : function(e, data){
			//替换默认图片，隐藏进度条
			var url = data.result.url;
			$("#photo img").attr("src",url);
			$("#pho").val(url);
			$("#photo_hidden").val(url);
			$('#progress .progress-bar').css("width","0%").html("");
		},
		progressall: function (e, data) {
            var progress = parseInt(data.loaded / data.total * 100, 10);
            $('#progress .progress-bar').css(
                'width',
                progress + '%'
            ).html(progress + '%');
        }
	});
})
</script>  
</html>  