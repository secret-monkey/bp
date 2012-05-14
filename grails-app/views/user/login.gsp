<%@ page import="bp.User"%>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'user.label', default: 'User')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>
</head>
<body>
	<div id="login-user" class="content scaffold-create" role="main">
		<h1>
			<g:message code="default.create.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<g:hasErrors bean="${userInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${userInstance}" var="error">
					<li
						<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
							error="${error}" /></li>
				</g:eachError>
			</ul>
		</g:hasErrors>
		<g:form action="login">
			<div
				class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} ">
				<label for="email"> <g:message code="user.email.label"
						default="Email" />

				</label>
				<g:field type="email" name="email" value="${userInstance?.email}" />
			</div>

			<div
				class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} ">
				<label for="password"> <g:message code="user.password.label"
						default="Password" />

				</label>
				<g:textField name="password" maxlength="15"
					value="${userInstance?.password}" />
			</div>
			<fieldset class="buttons">
				<g:actionSubmit class="save" action="login"
					value="${message(code: 'default.button.update.label', default: 'Login')}" />
				<g:actionSubmit class="delete" action="delete"
					value="${message(code: 'default.button.delete.label', default: 'Delete')}"
					formnovalidate=""
					onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			</fieldset>
		</g:form>
	</div>
</body>
</html>
