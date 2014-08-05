

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'container.label', default: 'Container')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-container" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-container" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'container.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'container.description.label', default: 'Description')}" />
					
						<th><g:message code="container.impLocation.label" default="Imp Location" /></th>
					
						<th><g:message code="container.customGlobe.label" default="Custom Globe" /></th>
					
						<th><g:message code="container.customLocation.label" default="Custom Location" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${containerInstanceList}" status="i" var="containerInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${containerInstance.id}">${fieldValue(bean: containerInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: containerInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: containerInstance, field: "impLocation")}</td>
					
						<td>${fieldValue(bean: containerInstance, field: "customGlobe")}</td>
					
						<td>${fieldValue(bean: containerInstance, field: "customLocation")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${containerInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
