



<div class="fieldcontain ${hasErrors(bean: containerInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="container.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${containerInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: containerInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="container.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="1000" value="${containerInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: containerInstance, field: 'impLocation', 'error')} ">
	<label for="impLocation">
		<g:message code="container.impLocation.label" default="Imp Location" />
		
	</label>
	<g:select id="impLocation" name="impLocation.id" from="${location.CustomLocation.list()}" optionKey="id" value="${containerInstance?.impLocation?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: containerInstance, field: 'customGlobe', 'error')} ">
	<label for="customGlobe">
		<g:message code="container.customGlobe.label" default="Custom Globe" />
		
	</label>
	<g:select id="customGlobe" name="customGlobe.id" from="${device.CustomGlobe.list()}" optionKey="id" value="${containerInstance?.customGlobe?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: containerInstance, field: 'nodes', 'error')} required">
	<label for="nodes">
		<g:message code="container.nodes.label" default="Nodes" />
		<span class="required-indicator">*</span>
	</label>

    <g:select name="nodes" from="${device.Node.list()}" optionKey="id" value="${containerInstance?.nodes*.id}" class="many-to-many" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: containerInstance, field: 'customLocation', 'error')} required">
	<label for="customLocation">
		<g:message code="container.customLocation.label" default="Custom Location" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="customLocation" name="customLocation.id" from="${location.CustomLocation.list()}" optionKey="id" required="" value="${containerInstance?.customLocation?.id}" class="many-to-one"/>

</div>

