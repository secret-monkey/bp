<%@ page import="bp.BPFeedback" %>



<div class="fieldcontain ${hasErrors(bean: BPFeedbackInstance, field: 'buyer', 'error')} required">
	<label for="buyer">
		<g:message code="BPFeedback.buyer.label" default="Buyer" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="buyer" name="buyer.id" from="${bp.BPUser.list()}" optionKey="id" required="" value="${BPFeedbackInstance?.buyer?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: BPFeedbackInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="BPFeedback.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${BPFeedbackInstance?.createdDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: BPFeedbackInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="BPFeedback.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${BPFeedbackInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: BPFeedbackInstance, field: 'experience', 'error')} ">
	<label for="experience">
		<g:message code="BPFeedback.experience.label" default="Experience" />
		
	</label>
	<g:textField name="experience" value="${BPFeedbackInstance?.experience}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: BPFeedbackInstance, field: 'rating', 'error')} required">
	<label for="rating">
		<g:message code="BPFeedback.rating.label" default="Rating" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="rating" required="" value="${fieldValue(bean: BPFeedbackInstance, field: 'rating')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: BPFeedbackInstance, field: 'seller', 'error')} required">
	<label for="seller">
		<g:message code="BPFeedback.seller.label" default="Seller" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="seller" name="seller.id" from="${bp.BPUser.list()}" optionKey="id" required="" value="${BPFeedbackInstance?.seller?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: BPFeedbackInstance, field: 'updatedDate', 'error')} required">
	<label for="updatedDate">
		<g:message code="BPFeedback.updatedDate.label" default="Updated Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${BPFeedbackInstance?.updatedDate}"  />
</div>

