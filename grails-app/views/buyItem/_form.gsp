<%@ page import="bp.BuyItem" %>



<div class="fieldcontain ${hasErrors(bean: buyItemInstance, field: 'itemName', 'error')} required">
	<label for="itemName">
		<g:message code="buyItem.itemName.label" default="Item Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="itemName" maxlength="50" required="" value="${buyItemInstance?.itemName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: buyItemInstance, field: 'itemKeywords', 'error')} required">
	<label for="itemKeywords">
		<g:message code="buyItem.itemKeywords.label" default="Item Keywords" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="itemKeywords" maxlength="100" required="" value="${buyItemInstance?.itemKeywords}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: buyItemInstance, field: 'itemDescription', 'error')} ">
	<label for="itemDescription">
		<g:message code="buyItem.itemDescription.label" default="Item Description" />
		
	</label>
	<g:textArea name="itemDescription" cols="40" rows="5" maxlength="500" value="${buyItemInstance?.itemDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: buyItemInstance, field: 'sampleItemImageURL', 'error')} ">
	<label for="sampleItemImageURL">
		<g:message code="buyItem.sampleItemImageURL.label" default="Sample Item Image URL" />
		
	</label>
	<g:textField name="sampleItemImageURL" value="${buyItemInstance?.sampleItemImageURL}"/>
</div>

