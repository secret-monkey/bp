
<%@ page import="bp.BPFeedback" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'BPFeedback.label', default: 'BPFeedback')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-BPFeedback" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-BPFeedback" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="BPFeedback.buyer.label" default="Buyer" /></th>
					
						<g:sortableColumn property="createdDate" title="${message(code: 'BPFeedback.createdDate.label', default: 'Created Date')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'BPFeedback.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="experience" title="${message(code: 'BPFeedback.experience.label', default: 'Experience')}" />
					
						<g:sortableColumn property="rating" title="${message(code: 'BPFeedback.rating.label', default: 'Rating')}" />
					
						<th><g:message code="BPFeedback.seller.label" default="Seller" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${BPFeedbackInstanceList}" status="i" var="BPFeedbackInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${BPFeedbackInstance.id}">${fieldValue(bean: BPFeedbackInstance, field: "buyer")}</g:link></td>
					
						<td><g:formatDate date="${BPFeedbackInstance.createdDate}" /></td>
					
						<td>${fieldValue(bean: BPFeedbackInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: BPFeedbackInstance, field: "experience")}</td>
					
						<td>${fieldValue(bean: BPFeedbackInstance, field: "rating")}</td>
					
						<td>${fieldValue(bean: BPFeedbackInstance, field: "seller")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${BPFeedbackInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
