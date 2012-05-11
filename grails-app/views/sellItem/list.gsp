
<%@ page import="bp.SellItem" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sellItem.label', default: 'SellItem')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-sellItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-sellItem" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="itemName" title="${message(code: 'sellItem.itemName.label', default: 'Item Name')}" />
					
						<g:sortableColumn property="itemKeywords" title="${message(code: 'sellItem.itemKeywords.label', default: 'Item Keywords')}" />
					
						<g:sortableColumn property="itemCondition" title="${message(code: 'sellItem.itemCondition.label', default: 'Item Condition')}" />
					
						<g:sortableColumn property="itemConditionRating" title="${message(code: 'sellItem.itemConditionRating.label', default: 'Item Condition Rating')}" />
					
						<g:sortableColumn property="itemDescription" title="${message(code: 'sellItem.itemDescription.label', default: 'Item Description')}" />
					
						<g:sortableColumn property="itemPrice" title="${message(code: 'sellItem.itemPrice.label', default: 'Item Price')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${sellItemInstanceList}" status="i" var="sellItemInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${sellItemInstance.id}">${fieldValue(bean: sellItemInstance, field: "itemName")}</g:link></td>
					
						<td>${fieldValue(bean: sellItemInstance, field: "itemKeywords")}</td>
					
						<td>${fieldValue(bean: sellItemInstance, field: "itemCondition")}</td>
					
						<td>${fieldValue(bean: sellItemInstance, field: "itemConditionRating")}</td>
					
						<td>${fieldValue(bean: sellItemInstance, field: "itemDescription")}</td>
					
						<td>${fieldValue(bean: sellItemInstance, field: "itemPrice")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${sellItemInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
