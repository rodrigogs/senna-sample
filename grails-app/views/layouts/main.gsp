<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'logo.svg')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'logo.svg')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'logo.svg')}">
  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
		<g:layoutHead/>
	</head>
	<body class="senna-transition-fade">
		<div class="senna-loading-bar"></div>
		
		<div id="grailsLogo" role="banner">
			<a href="<g:createLink uri="/"/>"><asset:image src="logo.svg" alt="Senna"/></a>
			<label class="main-title"></label>
		</div>
	
		<div id="application-status">
			<div id="application-status-default">
				<g:render template="/layouts/status" />
			</div>
		</div>
	
		<div id="page-body">
			<div id="page-body-default">
				<g:layoutBody />
			</div>
		</div>
		
		<div class="footer" role="contentinfo">
			This counter should never be updated unless the page is refreshed -> <label id="counter">0</label>
			<g:link controller="test" action="slides" style="float: right;">Slides</g:link>
		</div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		
	</body>
</html>
