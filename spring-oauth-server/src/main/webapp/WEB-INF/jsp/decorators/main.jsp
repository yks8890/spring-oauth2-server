<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<c:set var="contextPath" value="${pageContext.request.contextPath}"
	scope="application" />

<meta name="viewport" content="width=device-width,user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="keywords" content="mengcms.cn" />
<meta name="description" content="mengcms.cn" />
<meta name="author" content="mengcms.cn" />

<title><decorator:title default="사이트매쉬테스트" /></title>
<decorator:head />

</head>
<body>
	<div>
		<decorator:body />
	</div>
	<div>
		<hr />
		<p>
			<a href="mailto:zhangpdg@gmail.com">zhangpdg@gmail.com</a>, from <a
				href="http://www.mengcms.cn" target="_blank">MengCMS</a>.
		</p>
	</div>
</body>
</html>