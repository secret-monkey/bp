<%@ page import="bp.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="user.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${userInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		
	</label>
	<g:textField name="password" maxlength="15" value="${userInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'aboutMe', 'error')} ">
	<label for="aboutMe">
		<g:message code="user.aboutMe.label" default="About Me" />
		
	</label>
	<g:textField name="aboutMe" maxlength="100" value="${userInstance?.aboutMe}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="user.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" maxlength="50" value="${userInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="user.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" maxlength="50" value="${userInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'address1', 'error')} ">
	<label for="address1">
		<g:message code="user.address1.label" default="Address1" />
		
	</label>
	<g:textField name="address1" maxlength="50" value="${userInstance?.address1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'address2', 'error')} ">
	<label for="address2">
		<g:message code="user.address2.label" default="Address2" />
		
	</label>
	<g:textField name="address2" maxlength="50" value="${userInstance?.address2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="user.city.label" default="City" />
		
	</label>
	<g:textField name="city" maxlength="10" value="${userInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'state', 'error')} ">
	<label for="state">
		<g:message code="user.state.label" default="State" />
		
	</label>
	<g:textField name="state" maxlength="10" value="${userInstance?.state}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'zipcode', 'error')} ">
	<label for="zipcode">
		<g:message code="user.zipcode.label" default="Zipcode" />
		
	</label>
	<g:textField name="zipcode" maxlength="10" value="${userInstance?.zipcode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'country', 'error')} ">
	<label for="country">
		<g:message code="user.country.label" default="Country" />
		
	</label>
	<g:textField name="country" maxlength="10" value="${userInstance?.country}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'phone', 'error')} ">
	<label for="phone">
		<g:message code="user.phone.label" default="Phone" />
		
	</label>
	<g:textField name="phone" maxlength="20" value="${userInstance?.phone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'extn', 'error')} ">
	<label for="extn">
		<g:message code="user.extn.label" default="Extn" />
		
	</label>
	<g:textField name="extn" maxlength="10" value="${userInstance?.extn}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'pictureURL', 'error')} ">
	<label for="pictureURL">
		<g:message code="user.pictureURL.label" default="Picture URL" />
		
	</label>
	<g:field type="file" name="userPicture" />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'rating', 'error')} required">
	<label for="rating">
		<g:message code="user.rating.label" default="Rating" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="rating" required="" value="${fieldValue(bean: userInstance, field: 'rating')}"/>
</div>

