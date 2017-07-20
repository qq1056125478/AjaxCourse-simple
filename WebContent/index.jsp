<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="html/1.txt" id="txt">Hellow Ajax-txt!</a><br>
	<div id="content-txt"></div>
	
	<a href="json/1.js" id="json">Hellow Ajax-json!</a>
	<div id="content-json"></div>
	
	<a href="xml/1.xml" id="xml">Hellow Ajax-xml!</a>
	<div id="content-xml"></div>
	
<script type="text/javascript" src="scripts/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("a#txt").click(function() {
			var url = this.href;
				args = {"time":new Date()};
			alert(url); 
			$("#content-txt").load(url, args);
			return false;
		});
	});
	$(function(){
		$("a#json").click(function() {
			var url = this.href;
				args = {"time":new Date()};
			alert(url); 
			$.getJSON(url, args, function(data) {
				var name = data.name;
				$("#content-json").empty().append(name);
			})
			return false;
		});
	});
	$(function(){
		$("a#xml").click(function() {
			var url = this.href;
				args = {"time":new Date()};
			alert(url); 
			$.get(url, args, function(data) {
				var name = $(data).find("name").text();
				$("#content-xml").empty().append("<h2>"+name+"</h2>");
			})
			return false;
		});
	});
</script>
</body>
</html>