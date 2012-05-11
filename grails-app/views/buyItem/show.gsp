
<%@ page import="bp.BuyItem" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'buyItem.label', default: 'BuyItem')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="show-buyItem" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list buyItem">
			
				<g:if test="${buyItemInstance?.itemName}">
				<li class="fieldcontain">
					<span id="itemName-label" class="property-label"><g:message code="buyItem.itemName.label" default="Item Name" /></span>
					
						<span class="property-value" aria-labelledby="itemName-label"><g:fieldValue bean="${buyItemInstance}" field="itemName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buyItemInstance?.itemKeywords}">
				<li class="fieldcontain">
					<span id="itemKeywords-label" class="property-label"><g:message code="buyItem.itemKeywords.label" default="Item Keywords" /></span>
					
						<span class="property-value" aria-labelledby="itemKeywords-label"><g:fieldValue bean="${buyItemInstance}" field="itemKeywords"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buyItemInstance?.itemDescription}">
				<li class="fieldcontain">
					<span id="itemDescription-label" class="property-label"><g:message code="buyItem.itemDescription.label" default="Item Description" /></span>
					
						<span class="property-value" aria-labelledby="itemDescription-label"><g:fieldValue bean="${buyItemInstance}" field="itemDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buyItemInstance?.listCharge}">
				<li class="fieldcontain">
					<span id="listCharge-label" class="property-label"><g:message code="buyItem.listCharge.label" default="List Charge" /></span>
					
						<span class="property-value" aria-labelledby="listCharge-label"><g:fieldValue bean="${buyItemInstance}" field="listCharge"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buyItemInstance?.updatedDate}">
				<li class="fieldcontain">
					<span id="updatedDate-label" class="property-label"><g:message code="buyItem.updatedDate.label" default="Updated Date" /></span>
					
						<span class="property-value" aria-labelledby="updatedDate-label"><g:formatDate date="${buyItemInstance?.updatedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${buyItemInstance?.sampleItemImageURL}">
				<li class="fieldcontain">
					<span id="sampleItemImageURL-label" class="property-label"><g:message code="buyItem.sampleItemImageURL.label" default="Sample Item Image URL" /></span>
					
						<span class="property-value" aria-labelledby="sampleItemImageURL-label"><g:fieldValue bean="${buyItemInstance}" field="sampleItemImageURL"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buyItemInstance?.active}">
				<li class="fieldcontain">
					<span id="active-label" class="property-label"><g:message code="buyItem.active.label" default="Active" /></span>
					
						<span class="property-value" aria-labelledby="active-label"><g:formatBoolean boolean="${buyItemInstance?.active}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${buyItemInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="buyItem.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${buyItemInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${buyItemInstance?.id}" />
					<g:link class="edit" action="edit" id="${buyItemInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
