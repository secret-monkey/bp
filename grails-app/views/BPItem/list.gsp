
<%@ page import="bp.BPItem" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'BPItem.label', default: 'BPItem')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-BPItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-BPItem" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="active" title="${message(code: 'BPItem.active.label', default: 'Active')}" />
					
						<g:sortableColumn property="createdDate" title="${message(code: 'BPItem.createdDate.label', default: 'Created Date')}" />
					
						<g:sortableColumn property="itemDescription" title="${message(code: 'BPItem.itemDescription.label', default: 'Item Description')}" />
					
						<g:sortableColumn property="itemImageURL" title="${message(code: 'BPItem.itemImageURL.label', default: 'Item Image URL')}" />
					
						<g:sortableColumn property="itemKeywords" title="${message(code: 'BPItem.itemKeywords.label', default: 'Item Keywords')}" />
					
						<g:sortableColumn property="itemName" title="${message(code: 'BPItem.itemName.label', default: 'Item Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${BPItemInstanceList}" status="i" var="BPItemInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${BPItemInstance.id}">${fieldValue(bean: BPItemInstance, field: "active")}</g:link></td>
					
						<td><g:formatDate date="${BPItemInstance.createdDate}" /></td>
					
						<td>${fieldValue(bean: BPItemInstance, field: "itemDescription")}</td>
					
						<td>${fieldValue(bean: BPItemInstance, field: "itemImageURL")}</td>
					
						<td>${fieldValue(bean: BPItemInstance, field: "itemKeywords")}</td>
					
						<td>${fieldValue(bean: BPItemInstance, field: "itemName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${BPItemInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
