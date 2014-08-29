<!DOCTYPE html>
<html>
	<head>
	
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
		
	</head>
	<body>
	
		<h2 class="blinking-blue">This is a surface!</h2>
		
		<ul>
			<li><g:link controller="test" action="test">Test 1</g:link></li>
			<li><g:link controller="test" action="test2">Test 2</g:link></li>
			<li><g:link controller="test" action="unrouted">Unrouted</g:link></li>
			<li><g:link controller="test" action="error404">404 Error Test</g:link></li>
			<li><g:link controller="test" action="error500">500 Error Test</g:link></li>
		</ul>
	
		<h1>Welcome to Grails featuring Senna.js</h1>
		<p>You are now in touch with a single page application.</p>
		
		<asset:image src="minority.jpg"/>
		
	</body>
</html>
