
<%@ page import="bp.BPItem" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'BPItem.label', default: 'BPItem')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-BPItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-BPItem" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list BPItem">
			
				<g:if test="${BPItemInstance?.active}">
				<li class="fieldcontain">
					<span id="active-label" class="property-label"><g:message code="BPItem.active.label" default="Active" /></span>
					
						<span class="property-value" aria-labelledby="active-label"><g:formatBoolean boolean="${BPItemInstance?.active}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${BPItemInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="BPItem.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${BPItemInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${BPItemInstance?.itemDescription}">
				<li class="fieldcontain">
					<span id="itemDescription-label" class="property-label"><g:message code="BPItem.itemDescription.label" default="Item Description" /></span>
					
						<span class="property-value" aria-labelledby="itemDescription-label"><g:fieldValue bean="${BPItemInstance}" field="itemDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${BPItemInstance?.itemImageURL}">
				<li class="fieldcontain">
					<span id="itemImageURL-label" class="property-label"><g:message code="BPItem.itemImageURL.label" default="Item Image URL" /></span>
					
						<span class="property-value" aria-labelledby="itemImageURL-label"><g:fieldValue bean="${BPItemInstance}" field="itemImageURL"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${BPItemInstance?.itemKeywords}">
				<li class="fieldcontain">
					<span id="itemKeywords-label" class="property-label"><g:message code="BPItem.itemKeywords.label" default="Item Keywords" /></span>
					
						<span class="property-value" aria-labelledby="itemKeywords-label"><g:fieldValue bean="${BPItemInstance}" field="itemKeywords"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${BPItemInstance?.itemName}">
				<li class="fieldcontain">
					<span id="itemName-label" class="property-label"><g:message code="BPItem.itemName.label" default="Item Name" /></span>
					
						<span class="property-value" aria-labelledby="itemName-label"><g:fieldValue bean="${BPItemInstance}" field="itemName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${BPItemInstance?.itemPrice}">
				<li class="fieldcontain">
					<span id="itemPrice-label" class="property-label"><g:message code="BPItem.itemPrice.label" default="Item Price" /></span>
					
						<span class="property-value" aria-labelledby="itemPrice-label"><g:fieldValue bean="${BPItemInstance}" field="itemPrice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${BPItemInstance?.listCharge}">
				<li class="fieldcontain">
					<span id="listCharge-label" class="property-label"><g:message code="BPItem.listCharge.label" default="List Charge" /></span>
					
						<span class="property-value" aria-labelledby="listCharge-label"><g:fieldValue bean="${BPItemInstance}" field="listCharge"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${BPItemInstance?.transactionType}">
				<li class="fieldcontain">
					<span id="transactionType-label" class="property-label"><g:message code="BPItem.transactionType.label" default="Transaction Type" /></span>
					
						<span class="property-value" aria-labelledby="transactionType-label"><g:fieldValue bean="${BPItemInstance}" field="transactionType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${BPItemInstance?.updatedDate}">
				<li class="fieldcontain">
					<span id="updatedDate-label" class="property-label"><g:message code="BPItem.updatedDate.label" default="Updated Date" /></span>
					
						<span class="property-value" aria-labelledby="updatedDate-label"><g:formatDate date="${BPItemInstance?.updatedDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${BPItemInstance?.id}" />
					<g:link class="edit" action="edit" id="${BPItemInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
