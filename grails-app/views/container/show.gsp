

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'container.label', default: 'Container')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-container" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-container" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list container">
			
				<g:if test="${containerInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="container.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${containerInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${containerInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="container.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${containerInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${containerInstance?.impLocation}">
				<li class="fieldcontain">
					<span id="impLocation-label" class="property-label"><g:message code="container.impLocation.label" default="Imp Location" /></span>
					
						<span class="property-value" aria-labelledby="impLocation-label"><g:link controller="customLocation" action="show" id="${containerInstance?.impLocation?.id}">${containerInstance?.impLocation?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${containerInstance?.customGlobe}">
				<li class="fieldcontain">
					<span id="customGlobe-label" class="property-label"><g:message code="container.customGlobe.label" default="Custom Globe" /></span>
					
						<span class="property-value" aria-labelledby="customGlobe-label"><g:link controller="customGlobe" action="show" id="${containerInstance?.customGlobe?.id}">${containerInstance?.customGlobe?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${containerInstance?.nodes}">
				<li class="fieldcontain">
					<span id="nodes-label" class="property-label"><g:message code="container.nodes.label" default="Nodes" /></span>
					
						<g:each in="${containerInstance.nodes}" var="n">
						<span class="property-value" aria-labelledby="nodes-label"><g:link controller="node" action="show" id="${n.id}">${n?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${containerInstance?.customLocation}">
				<li class="fieldcontain">
					<span id="customLocation-label" class="property-label"><g:message code="container.customLocation.label" default="Custom Location" /></span>
					
						<span class="property-value" aria-labelledby="customLocation-label"><g:link controller="customLocation" action="show" id="${containerInstance?.customLocation?.id}">${containerInstance?.customLocation?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${containerInstance?.id}" />
					<g:link class="edit" action="edit" id="${containerInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
