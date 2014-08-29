<!DOCTYPE html>
<html>
	<head>
	
		<meta name="layout" content="main"/>
		<title>Test Page</title>
		
	</head>
	<body>
	
		<h2 class="blinking-blue">This is a surface!</h2>
		
		<ul>
			<li><g:link url="..">Home</g:link></li>
			<li><g:link controller="test" action="test2">Test 2</g:link></li>
			<li><g:link controller="test" action="unrouted">Unrouted</g:link></li>
			<li><g:link controller="test" action="error404">404 Error Test</g:link></li>
			<li><g:link controller="test" action="error500">500 Error Test</g:link></li>
		</ul>
		
		<h1>Test page 1</h1>
		<p>Congratulations, you have successfully configured Senna.js!</p>
		
		<asset:image src="test1.jpg"/>
		<asset:javascript src="test1.js"/>
		
	</body>
</html>
