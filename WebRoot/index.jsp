<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache" >
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!-- 引入bootstrap样式 -->
	<link href="./css/bootstrap.min.css" rel="stylesheet">
	<!-- 引入bootstrap-table样式 -->
	<link href="./css/bootstrap-table.min.css" rel="stylesheet">
	
	<!-- jquery -->
	<script src="./js/jquery.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
	
	<!-- bootstrap-table.min.js -->
	<script src="./js/bootstrap-table.min.js"></script>
	<!-- 引入中文语言包 -->
	<script src="./js/bootstrap-table-zh-CN.min.js"></script>
	
<style type="text/css">
.gyssh {
	font-size: 26px;
	width: 200px; font-family : 宋体; color : #FFFAFA; background-color :
	#87CEFA; margin-bottom : 10px; text-align : center;
	margin-top: 20px;
	font-family: 宋体;
	color: #FFFAFA;
	background-color: #87CEFA;
	margin-bottom: 10px;
	text-align: center;
}

/* 线位置 */
.xwz {
	height: 1px;
	border: none;
	border-top: 1px solid #D3D3D3;
	margin-left: 60px;
}
/* 设置总体布局 */
.frame {
	margin:0 auto;
	width:1200px;
	background-image:linear-gradient(#FFF0F5,#FFFFF0);
}
/* 设置下层布局 */
.bottom {
	width: 1200px;
	height: 600px;
}
/* 设置下层右侧布局 */
.right {
	float: left;
	width: 960px;
	height: 600px;
}
</style>
</head>
  
  <body>
  		<div class="frame">
			<jsp:include   page="./html/top.html" flush="true"/>
			<div class="bottom">
			<jsp:include   page="./html/left.html" flush="true"/>
			<div class="right">
			<div class="gyssh">供应商审核</div>
			<div class="xwz"></div>
			<div style = "margin-top:40px;"><h4 style = "float:left; margin-left: 200px;">供应商</h4><input id="searchInput" class = "form-control" style = "width:200px; float:left;margin-top:5px; margin-left:20px;"/><button id="searchBtn" class = "btn btn-default" style = "margin-left:40px;margin-top:5px;">查询</button></div>
				<div style = "margin-top:50px;">
				<table id="table"  >
				</table>
				<script>
					$("#table").bootstrapTable({ // 对应table标签的id
					      url: "getDcsqshList", // 获取表格数据的url
					      cache: false, // 设置为 false 禁用 AJAX 数据缓存， 默认为true
					      striped: true,  //表格显示条纹，默认为false
					      pagination: true, // 在表格底部显示分页组件，默认false
					      pageList: [2, 3], // 设置页面可以显示的数据条数
					      pageSize: 2, // 页面数据条数
					      pageNumber: 1, // 首页页码
					      sidePagination: 'server', // 设置为服务器端分页
					      queryParams: function (params) { // 请求服务器数据时发送的参数，可以在这里添加额外的查询参数，返回false则终止请求
					
					          return {
					              pageSize: params.limit, // 每页要显示的数据条数
					              offset: params.offset, // 每页显示数据的开始行号
					              sort: params.sort, // 要排序的字段
					              sortOrder: params.order, // 排序规则
					          }
					      },
					      sortName: 'id', // 要排序的字段
					      sortOrder: 'desc', // 排序规则
					      columns: [
					          {
					              field: 'id', // 返回json数据中的name
					              title: '序号', // 表格表头显示文字
					              align: 'center', // 左右居中
					              valign: 'middle' // 上下居中
					          }, {
					              field: 'gysname',
					              title: '供应商名称',
					              align: 'center',
					              valign: 'middle'
					          }, {
					              field: 'time',
					              title: '申请日期',
					              align: 'center',
					              valign: 'middle'
					          }, {
					          	
					              title: "操作",
					              align: 'center',
					              valign: 'middle',
					              width: 160, // 定义列的宽度，单位为像素px
					              formatter: function (value, row, index) {
					                  return '<a href="#">审批</a>';
					              }			              
					          }
					          
					      ],
					      onLoadSuccess: function(){  //加载成功时执行
					            console.info("加载成功");
					      },
					      onLoadError: function(){  //加载失败时执行
					            console.info("加载数据失败");
					      }
					
					})		
				</script>
					</div>	
				</div>	
			</div>
		</div>
		<script type="text/javascript">
			$(function(){
				$("#searchBtn").click(function(){
					var gysname = $("#searchInput").val();
					$("#table").bootstrapTable('destroy'); 
					$("#table").bootstrapTable({ // 对应table标签的id
					      url: "getDcsqsh", // 获取表格数据的url
					      cache: false, // 设置为 false 禁用 AJAX 数据缓存， 默认为true
					      striped: true,  //表格显示条纹，默认为false
					      sidePagination: 'server',		//设置服务器端分页
					      queryParams: function (params) { // 请求服务器数据时发送的参数，可以在这里添加额外的查询参数，返回false则终止请求
					          return {
					          	  pageSize: params.limit, // 每页要显示的数据条数
					              gysname:gysname
					          }
					      },
					      sortName: 'id', // 要排序的字段
					      sortOrder: 'desc', // 排序规则
					      columns: [
					          {
					              field: 'id', // 返回json数据中的name
					              title: '序号', // 表格表头显示文字
					              align: 'center', // 左右居中
					              valign: 'middle' // 上下居中
					          }, {
					              field: 'gysname',
					              title: '供应商名称',
					              align: 'center',
					              valign: 'middle'
					          }, {
					              field: 'time',
					              title: '申请日期',
					              align: 'center',
					              valign: 'middle'
					          }, {
					          	
					              title: "操作",
					              align: 'center',
					              valign: 'middle',
					              width: 160, // 定义列的宽度，单位为像素px
					              formatter: function (value, row, index) {
					                  return '<a href="#">审批</a>';
					              }			              
					          }
					          
					      ],
					      onLoadSuccess: function(){  //加载成功时执行
					            console.info("加载成功");
					      },
					      onLoadError: function(){  //加载失败时执行
					            console.info("加载数据失败");
					      }
					})		
				});
				
				$("#searchInput").bind("input propertychange",function(){
					if("" == $(this).val()){
						$("#table").bootstrapTable('destroy');
						$("#table").bootstrapTable({ // 对应table标签的id
					      url: "getDcsqshList", // 获取表格数据的url
					      cache: false, // 设置为 false 禁用 AJAX 数据缓存， 默认为true
					      striped: true,  //表格显示条纹，默认为false
					      pagination: true, // 在表格底部显示分页组件，默认false
					      pageList: [2, 3], // 设置页面可以显示的数据条数
					      pageSize: 2, // 页面数据条数
					      pageNumber: 1, // 首页页码
					      sidePagination: 'server', // 设置为服务器端分页
					      queryParams: function (params) { // 请求服务器数据时发送的参数，可以在这里添加额外的查询参数，返回false则终止请求
					
					          return {
					              pageSize: params.limit, // 每页要显示的数据条数
					              offset: params.offset, // 每页显示数据的开始行号
					              sort: params.sort, // 要排序的字段
					              sortOrder: params.order, // 排序规则
					          }
					      },
					      sortName: 'id', // 要排序的字段
					      sortOrder: 'desc', // 排序规则
					      columns: [
					          {
					              field: 'id', // 返回json数据中的name
					              title: '序号', // 表格表头显示文字
					              align: 'center', // 左右居中
					              valign: 'middle' // 上下居中
					          }, {
					              field: 'gysname',
					              title: '供应商名称',
					              align: 'center',
					              valign: 'middle'
					          }, {
					              field: 'time',
					              title: '申请日期',
					              align: 'center',
					              valign: 'middle'
					          }, {
					          	
					              title: "操作",
					              align: 'center',
					              valign: 'middle',
					              width: 160, // 定义列的宽度，单位为像素px
					              formatter: function (value, row, index) {
					                  return '<a href="#">审批</a>';
					              }			              
					          }
					          
					      ],
					      onLoadSuccess: function(){  //加载成功时执行
					            console.info("加载成功");
					      },
					      onLoadError: function(){  //加载失败时执行
					            console.info("加载数据失败");
					      }
					
						});		
					}
				});
				
			});
		</script>
  </body>
</html>
