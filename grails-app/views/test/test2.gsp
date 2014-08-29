<!DOCTYPE html>
<html>
	<head>
	
		<meta name="layout" content="main"/>
		<title>Test Page 2</title>
		
	</head>
	<body>
	
		<h2 class="blinking-blue">This is a surface!</h2>
		<ul>
			<li><g:link url="..">Home</g:link></li>
			<li><g:link controller="test" action="test">Test 1</g:link></li>
			<li><g:link controller="test" action="unrouted">Unrouted</g:link></li>
			<li><g:link controller="test" action="error404">404 Error Test</g:link></li>
			<li><g:link controller="test" action="error500">500 Error Test</g:link></li>
		</ul>
		
		<h1>Test page 2</h1>
		<p>Throttle down your connection and suffer just once trying to load the gif bellow.</p>
		
		<asset:image src="huebr.gif"/>
		<asset:javascript src="test2.js"/>
		
	</body>
</html>
