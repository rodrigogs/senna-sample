<!DOCTYPE html>
<html>
	<head>
	
		<title><g:if env="development">Grails Runtime Exception</g:if><g:else>Error</g:else></title>
		<meta name="layout" content="main">
		<g:if env="development"><asset:stylesheet src="errors.css"/></g:if>
		
	</head>
	<body>
		
		<h2 class="blinking-blue">This is a surface!</h2>
		
		<ul>
			<li><g:link url="">Home</g:link></li>
			<li><g:link controller="test" action="test">Test 1</g:link></li>
			<li><g:link controller="test" action="test2">Test 2</g:link></li>
			<li><g:link controller="test" action="unrouted">Unrouted</g:link></li>
			<li><g:link controller="test" action="error404">404 Error Test</g:link></li>
			<li><g:link controller="test" action="error500">500 Error Test</g:link></li>
		</ul>
		
		<ul class="errors">
			<li>An error has occurred</li>
			<li>Status: ${status}</li>
			<li>Text: ${text}</li>
		</ul>
		
		<asset:image src="bluescreen.jpg" width="90%" height="90%" />
		
	</body>
</html>
