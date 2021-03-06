<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>大学生社团管理系统-申请社团</title>
<meta name="viewport"
	content="width=device-width,height=device-height,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
</style>
</head>
<body>
	<%@include file="/head.jsp"%>
	<div class="container theme-showcase" role="main">

		<ol class="breadcrumb" style="margin-top: 80px">
			<li><a href="/">首页</a></li>
			<li class="active">申请社团</li>
		</ol>

		<form>

			<div class="col-md-8">
				<input type="hidden" name="clubUid" value="0">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">社团名称</h3>
					</div>
					<div class="panel-body">
						<input type="text" class="form-control" name="clubName" />
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">社团口号</h3>
					</div>
					<div class="panel-body">
						<input type="text" class="form-control" name="clubSay" />
					</div>
				</div>


				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">社团编号</h3>
					</div>
					<div class="panel-body">
						<input type="text" class="form-control" name="clubId" />
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">社团容量</h3>
					</div>
					<input type="hidden" value="0" name="clubNownum" />
					<div class="panel-body">
						<input type="text" class="form-control" name="clubTotalnum" value="${club.clubTotalnum}"
						 onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" 
						 onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"/>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">社团详情</h3>
					</div>
					<div class="panel-body">
						<input type="text" class="form-control" name="clubDesc" />
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div>
					<div class="row">
						<label>社团Logo上传</label>
						<div class="file-loading">
							<input id="file-fr" name="file" type="file">
						</div>
						<div>
							<input type="hidden" id="userImage"  value="" />
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4" style="padding-top: 20px;">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">申请操作</h3>
					</div>
					<div class="panel-body">
						<div class="row" style="text-align: center">
							<div class="row">
								<input type="button" class="btn btn-primary" onclick="applyClub()" value="申请社团"></input>
								<input type="button" class="btn btn-primary" onclick="reto()" value="返回"></input>
							</div>
						</div>
					</div>
				</div>
			</div>
	</div>
	</form>
	</div>
	<!-- 图片上传即使预览插件 -->
	<link rel="stylesheet" href="${app} /css/bootstrap/fileinput.min.css">
	<link rel="stylesheet" href="${app} /css/bootstrap/fileinput.css">
	<script type="text/javascript" src="${app} /js/fileinput.min.js"></script>
	<!-- 这个是汉化-->
	<script type="text/javascript" src="${app} /js/zh.js"></script>
	<script type="text/javascript" src="${app} /js/fileupload.js"></script>
    <script type="text/javascript" src="${app} /js/applyClub.js"></script>
</body>
</html>