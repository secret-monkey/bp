
<%@ page import="bp.BuyItem" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'buyItem.label', default: 'BuyItem')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-buyItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-buyItem" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="itemName" title="${message(code: 'buyItem.itemName.label', default: 'Item Name')}" />
					
						<g:sortableColumn property="itemKeywords" title="${message(code: 'buyItem.itemKeywords.label', default: 'Item Keywords')}" />
					
						<g:sortableColumn property="itemDescription" title="${message(code: 'buyItem.itemDescription.label', default: 'Item Description')}" />
					
						<g:sortableColumn property="listCharge" title="${message(code: 'buyItem.listCharge.label', default: 'List Charge')}" />
					
						<g:sortableColumn property="updatedDate" title="${message(code: 'buyItem.updatedDate.label', default: 'Updated Date')}" />
					
						<g:sortableColumn property="sampleItemImageURL" title="${message(code: 'buyItem.sampleItemImageURL.label', default: 'Sample Item Image URL')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${buyItemInstanceList}" status="i" var="buyItemInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${buyItemInstance.id}">${fieldValue(bean: buyItemInstance, field: "itemName")}</g:link></td>
					
						<td>${fieldValue(bean: buyItemInstance, field: "itemKeywords")}</td>
					
						<td>${fieldValue(bean: buyItemInstance, field: "itemDescription")}</td>
					
						<td>${fieldValue(bean: buyItemInstance, field: "listCharge")}</td>
					
						<td><g:formatDate date="${buyItemInstance.updatedDate}" /></td>
					
						<td>${fieldValue(bean: buyItemInstance, field: "sampleItemImageURL")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${buyItemInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
