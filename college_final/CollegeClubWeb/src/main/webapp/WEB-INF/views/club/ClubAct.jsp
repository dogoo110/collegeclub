<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>大学生社团管理系统-社团活动</title>
<meta name="viewport" content="width=device-width,height=device-height,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
</head>
<body>
	<%@include file="/head.jsp"%>
	<div class="container theme-showcase" role="main">
		<ol class="breadcrumb" style="margin-top: 80px">
			<li><a href="/">首页</a></li>
			<li>社团</li>
			<li class="active">${title}社团活动</li>
		</ol>

	    <%@include file="clubMenu.jsp"%>
		
		<div style="margin-top: 50px; display: hidden;" role="alert"></div>
		<table class="table table-striped">
			<thead>
				<tr>
			    	<th>活动主题</th>
					<th class="hidden-xs hidden-sm">活动地址</th>
					<th class="hidden-xs hidden-sm">活动时间</th>
					<th>参加人数/活动人数</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
             	<c:if test="${page.totalPage>0}" var="product"  scope="page">
					<c:forEach items="${page.products}" var="clubact">
						<tr>
							<td>${clubact.caTitle}</td>
							<td class="hidden-xs hidden-sm">${clubact.caAddress}</td>
							<td class="hidden-xs hidden-sm"><fmt:formatDate value="${clubact.caTime}" pattern="yyyy年MM月dd日"/></td>
							<td>${clubact.caNownumber}/${clubact.caNumber}</td>
							<td><a href="/club/act/detail?caUid=${clubact.caUid}" class="btn btn-success">详情</a>
							<c:if test="${clubAdmin}">						
							<a href="/club/act/edit?caUid=${clubact.caUid}" class="btn btn-success">编辑</a>
							<a href="javascript:void(0)" class="btn btn-success" onclick="deleteClubAct('${clubact.caUid}')">删除</a>
							</c:if>								
							</td>
						</tr>
					</c:forEach>
				</c:if>       
			</tbody>
		</table>
      <div class="col-center-block">
			<ul class="pager">
				
				<c:if test="${page.currentPage>1 }">
				<li><a href="/club/act/query/${club.clubUid}?type=${type}&page=${page.currentPage-1}">&laquo;</a></li>
				<li><a href="/club/act/query/${club.clubUid}?type=${type}&page=1">1</a></li>
				<li><a href="#">...</a></li>
				</c:if>
				<li><a href="#">${page.currentPage}</a></li>			
				<c:if test="${page.totalPage>page.currentPage}">
				<li><a href="#">...</a></li>
				<li><a href="/club/act/query/${club.clubUid}?type=${type}&page=${page.totalPage}">${page.totalPage}</a></li>
				<li><a href="/club/act/query/${club.clubUid}?type=${type}&page=${page.currentPage+1}">&raquo;</a></li>
				</c:if>
			</ul>
		</div>

	</div>
	<input type="hidden" id="clubUid" value="${clubUid}"/>
<script type="text/javascript" src="${app}/js/club_common.js"></script>
</body>
</html>