
<%@ page import="bp.SellItem" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sellItem.label', default: 'SellItem')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-sellItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-sellItem" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list sellItem">
			
				<g:if test="${sellItemInstance?.itemName}">
				<li class="fieldcontain">
					<span id="itemName-label" class="property-label"><g:message code="sellItem.itemName.label" default="Item Name" /></span>
					
						<span class="property-value" aria-labelledby="itemName-label"><g:fieldValue bean="${sellItemInstance}" field="itemName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sellItemInstance?.itemKeywords}">
				<li class="fieldcontain">
					<span id="itemKeywords-label" class="property-label"><g:message code="sellItem.itemKeywords.label" default="Item Keywords" /></span>
					
						<span class="property-value" aria-labelledby="itemKeywords-label"><g:fieldValue bean="${sellItemInstance}" field="itemKeywords"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sellItemInstance?.itemCondition}">
				<li class="fieldcontain">
					<span id="itemCondition-label" class="property-label"><g:message code="sellItem.itemCondition.label" default="Item Condition" /></span>
					
						<span class="property-value" aria-labelledby="itemCondition-label"><g:fieldValue bean="${sellItemInstance}" field="itemCondition"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sellItemInstance?.itemConditionRating}">
				<li class="fieldcontain">
					<span id="itemConditionRating-label" class="property-label"><g:message code="sellItem.itemConditionRating.label" default="Item Condition Rating" /></span>
					
						<span class="property-value" aria-labelledby="itemConditionRating-label"><g:fieldValue bean="${sellItemInstance}" field="itemConditionRating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sellItemInstance?.itemDescription}">
				<li class="fieldcontain">
					<span id="itemDescription-label" class="property-label"><g:message code="sellItem.itemDescription.label" default="Item Description" /></span>
					
						<span class="property-value" aria-labelledby="itemDescription-label"><g:fieldValue bean="${sellItemInstance}" field="itemDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sellItemInstance?.itemPrice}">
				<li class="fieldcontain">
					<span id="itemPrice-label" class="property-label"><g:message code="sellItem.itemPrice.label" default="Item Price" /></span>
					
						<span class="property-value" aria-labelledby="itemPrice-label"><g:fieldValue bean="${sellItemInstance}" field="itemPrice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sellItemInstance?.listCharge}">
				<li class="fieldcontain">
					<span id="listCharge-label" class="property-label"><g:message code="sellItem.listCharge.label" default="List Charge" /></span>
					
						<span class="property-value" aria-labelledby="listCharge-label"><g:fieldValue bean="${sellItemInstance}" field="listCharge"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sellItemInstance?.updatedDate}">
				<li class="fieldcontain">
					<span id="updatedDate-label" class="property-label"><g:message code="sellItem.updatedDate.label" default="Updated Date" /></span>
					
						<span class="property-value" aria-labelledby="updatedDate-label"><g:formatDate date="${sellItemInstance?.updatedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sellItemInstance?.itemImageURL}">
				<li class="fieldcontain">
					<span id="itemImageURL-label" class="property-label"><g:message code="sellItem.itemImageURL.label" default="Item Image URL" /></span>
					
						<span class="property-value" aria-labelledby="itemImageURL-label"><g:fieldValue bean="${sellItemInstance}" field="itemImageURL"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sellItemInstance?.active}">
				<li class="fieldcontain">
					<span id="active-label" class="property-label"><g:message code="sellItem.active.label" default="Active" /></span>
					
						<span class="property-value" aria-labelledby="active-label"><g:formatBoolean boolean="${sellItemInstance?.active}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sellItemInstance?.allIncludedItemsAvailable}">
				<li class="fieldcontain">
					<span id="allIncludedItemsAvailable-label" class="property-label"><g:message code="sellItem.allIncludedItemsAvailable.label" default="All Included Items Available" /></span>
					
						<span class="property-value" aria-labelledby="allIncludedItemsAvailable-label"><g:formatBoolean boolean="${sellItemInstance?.allIncludedItemsAvailable}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sellItemInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="sellItem.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${sellItemInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${sellItemInstance?.id}" />
					<g:link class="edit" action="edit" id="${sellItemInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
