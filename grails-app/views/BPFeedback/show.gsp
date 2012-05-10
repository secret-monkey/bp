
<%@ page import="bp.BPFeedback" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'BPFeedback.label', default: 'BPFeedback')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-BPFeedback" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-BPFeedback" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list BPFeedback">
			
				<g:if test="${BPFeedbackInstance?.buyer}">
				<li class="fieldcontain">
					<span id="buyer-label" class="property-label"><g:message code="BPFeedback.buyer.label" default="Buyer" /></span>
					
						<span class="property-value" aria-labelledby="buyer-label"><g:link controller="BPUser" action="show" id="${BPFeedbackInstance?.buyer?.id}">${BPFeedbackInstance?.buyer?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${BPFeedbackInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="BPFeedback.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${BPFeedbackInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${BPFeedbackInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="BPFeedback.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${BPFeedbackInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${BPFeedbackInstance?.experience}">
				<li class="fieldcontain">
					<span id="experience-label" class="property-label"><g:message code="BPFeedback.experience.label" default="Experience" /></span>
					
						<span class="property-value" aria-labelledby="experience-label"><g:fieldValue bean="${BPFeedbackInstance}" field="experience"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${BPFeedbackInstance?.rating}">
				<li class="fieldcontain">
					<span id="rating-label" class="property-label"><g:message code="BPFeedback.rating.label" default="Rating" /></span>
					
						<span class="property-value" aria-labelledby="rating-label"><g:fieldValue bean="${BPFeedbackInstance}" field="rating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${BPFeedbackInstance?.seller}">
				<li class="fieldcontain">
					<span id="seller-label" class="property-label"><g:message code="BPFeedback.seller.label" default="Seller" /></span>
					
						<span class="property-value" aria-labelledby="seller-label"><g:link controller="BPUser" action="show" id="${BPFeedbackInstance?.seller?.id}">${BPFeedbackInstance?.seller?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${BPFeedbackInstance?.updatedDate}">
				<li class="fieldcontain">
					<span id="updatedDate-label" class="property-label"><g:message code="BPFeedback.updatedDate.label" default="Updated Date" /></span>
					
						<span class="property-value" aria-labelledby="updatedDate-label"><g:formatDate date="${BPFeedbackInstance?.updatedDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${BPFeedbackInstance?.id}" />
					<g:link class="edit" action="edit" id="${BPFeedbackInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
