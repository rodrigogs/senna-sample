<a href="#page-body" class="skip"><g:message
		code="default.link.skip.label" default="Skip to content&hellip;" /></a>
<div id="status" role="complementary">
	<h2 class="blinking-blue">
		<g:if test="${!(params?.action == 'unrouted')}">This is a surface!</g:if><g:else>This is an useless surface!</g:else>
	</h2>
	<h1>Current Action</h1>
	<ul>
		<li>
			${params.controller} - ${params.action}
		</li>
	</ul>
	<h1>Application Status</h1>
	<ul>
		<li>App version: <g:meta name="app.version" /></li>
		<li>Grails version: <g:meta name="app.grails.version" /></li>
		<li>Groovy version: ${GroovySystem.getVersion()}</li>
		<li>JVM version: ${System.getProperty('java.version')}</li>
		<li>Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</li>
		<li>Controllers: ${grailsApplication.controllerClasses.size()}</li>
		<li>Domains: ${grailsApplication.domainClasses.size()}</li>
		<li>Services: ${grailsApplication.serviceClasses.size()}</li>
		<li>Tag Libraries: ${grailsApplication.tagLibClasses.size()}</li>
	</ul>
</div>