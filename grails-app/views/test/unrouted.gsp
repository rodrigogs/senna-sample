<!DOCTYPE html>
<html>
	<head>
	
		<meta name="layout" content="main"/>
		<title>Unrouted Page</title>
		
	</head>
	<body>
	
		<h2 class="blinking-blue">This is an useless surface!</h2>
		
		<ul>
			<li><g:link url="..">Home</g:link></li>
			<li><g:link controller="test" action="test">Test 1</g:link></li>
			<li><g:link controller="test" action="test2">Test 2</g:link></li>
			<li><g:link controller="test" action="error404">404 Error Test</g:link></li>
			<li><g:link controller="test" action="error500">500 Error Test</g:link></li>
		</ul>
		
		<h1>Unrouted Page</h1>
		<p>This page isn't routed as the footer counter tells over.</p>
		
		<asset:image src="unrouted.jpg"/>
		
	</body>
</html>
