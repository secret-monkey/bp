
<%@ page import="bp.User" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-user" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list user">
			
				<g:if test="${userInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="user.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${userInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="user.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${userInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.aboutMe}">
				<li class="fieldcontain">
					<span id="aboutMe-label" class="property-label"><g:message code="user.aboutMe.label" default="About Me" /></span>
					
						<span class="property-value" aria-labelledby="aboutMe-label"><g:fieldValue bean="${userInstance}" field="aboutMe"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="user.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${userInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="user.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${userInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.address1}">
				<li class="fieldcontain">
					<span id="address1-label" class="property-label"><g:message code="user.address1.label" default="Address1" /></span>
					
						<span class="property-value" aria-labelledby="address1-label"><g:fieldValue bean="${userInstance}" field="address1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.address2}">
				<li class="fieldcontain">
					<span id="address2-label" class="property-label"><g:message code="user.address2.label" default="Address2" /></span>
					
						<span class="property-value" aria-labelledby="address2-label"><g:fieldValue bean="${userInstance}" field="address2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="user.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${userInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="user.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${userInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.zipcode}">
				<li class="fieldcontain">
					<span id="zipcode-label" class="property-label"><g:message code="user.zipcode.label" default="Zipcode" /></span>
					
						<span class="property-value" aria-labelledby="zipcode-label"><g:fieldValue bean="${userInstance}" field="zipcode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="user.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${userInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="user.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${userInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.extn}">
				<li class="fieldcontain">
					<span id="extn-label" class="property-label"><g:message code="user.extn.label" default="Extn" /></span>
					
						<span class="property-value" aria-labelledby="extn-label"><g:fieldValue bean="${userInstance}" field="extn"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.bought}">
				<li class="fieldcontain">
					<span id="bought-label" class="property-label"><g:message code="user.bought.label" default="Bought" /></span>
					
						<g:each in="${userInstance.bought}" var="b">
						<span class="property-value" aria-labelledby="bought-label"><g:link controller="sellItem" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="user.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${userInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.friends}">
				<li class="fieldcontain">
					<span id="friends-label" class="property-label"><g:message code="user.friends.label" default="Friends" /></span>
					
						<g:each in="${userInstance.friends}" var="f">
						<span class="property-value" aria-labelledby="friends-label"><g:link controller="user" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.pictureURL}">
				<li class="fieldcontain">
					<span id="pictureURL-label" class="property-label"><g:message code="user.pictureURL.label" default="Picture URL" /></span>
					
						<span class="property-value" aria-labelledby="pictureURL-label"><g:fieldValue bean="${userInstance}" field="pictureURL"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.rating}">
				<li class="fieldcontain">
					<span id="rating-label" class="property-label"><g:message code="user.rating.label" default="Rating" /></span>
					
						<span class="property-value" aria-labelledby="rating-label"><g:fieldValue bean="${userInstance}" field="rating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.sold}">
				<li class="fieldcontain">
					<span id="sold-label" class="property-label"><g:message code="user.sold.label" default="Sold" /></span>
					
						<g:each in="${userInstance.sold}" var="s">
						<span class="property-value" aria-labelledby="sold-label"><g:link controller="sellItem" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.toBuy}">
				<li class="fieldcontain">
					<span id="toBuy-label" class="property-label"><g:message code="user.toBuy.label" default="To Buy" /></span>
					
						<g:each in="${userInstance.toBuy}" var="t">
						<span class="property-value" aria-labelledby="toBuy-label"><g:link controller="sellItem" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.toSell}">
				<li class="fieldcontain">
					<span id="toSell-label" class="property-label"><g:message code="user.toSell.label" default="To Sell" /></span>
					
						<g:each in="${userInstance.toSell}" var="t">
						<span class="property-value" aria-labelledby="toSell-label"><g:link controller="sellItem" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.updatedDate}">
				<li class="fieldcontain">
					<span id="updatedDate-label" class="property-label"><g:message code="user.updatedDate.label" default="Updated Date" /></span>
					
						<span class="property-value" aria-labelledby="updatedDate-label"><g:formatDate date="${userInstance?.updatedDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${userInstance?.id}" />
					<g:link class="edit" action="edit" id="${userInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
