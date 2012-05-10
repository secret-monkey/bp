<%@ page import="bp.BPItem" %>



<div class="fieldcontain ${hasErrors(bean: BPItemInstance, field: 'active', 'error')} ">
	<label for="active">
		<g:message code="BPItem.active.label" default="Active" />
		
	</label>
	<g:checkBox name="active" value="${BPItemInstance?.active}" />
</div>

<div class="fieldcontain ${hasErrors(bean: BPItemInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="BPItem.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${BPItemInstance?.createdDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: BPItemInstance, field: 'itemDescription', 'error')} ">
	<label for="itemDescription">
		<g:message code="BPItem.itemDescription.label" default="Item Description" />
		
	</label>
	<g:textField name="itemDescription" value="${BPItemInstance?.itemDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: BPItemInstance, field: 'itemImageURL', 'error')} ">
	<label for="itemImageURL">
		<g:message code="BPItem.itemImageURL.label" default="Item Image URL" />
		
	</label>
	<g:textField name="itemImageURL" value="${BPItemInstance?.itemImageURL}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: BPItemInstance, field: 'itemKeywords', 'error')} ">
	<label for="itemKeywords">
		<g:message code="BPItem.itemKeywords.label" default="Item Keywords" />
		
	</label>
	<g:textField name="itemKeywords" value="${BPItemInstance?.itemKeywords}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: BPItemInstance, field: 'itemName', 'error')} ">
	<label for="itemName">
		<g:message code="BPItem.itemName.label" default="Item Name" />
		
	</label>
	<g:textField name="itemName" value="${BPItemInstance?.itemName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: BPItemInstance, field: 'itemPrice', 'error')} required">
	<label for="itemPrice">
		<g:message code="BPItem.itemPrice.label" default="Item Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="itemPrice" required="" value="${fieldValue(bean: BPItemInstance, field: 'itemPrice')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: BPItemInstance, field: 'listCharge', 'error')} required">
	<label for="listCharge">
		<g:message code="BPItem.listCharge.label" default="List Charge" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="listCharge" required="" value="${fieldValue(bean: BPItemInstance, field: 'listCharge')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: BPItemInstance, field: 'transactionType', 'error')} ">
	<label for="transactionType">
		<g:message code="BPItem.transactionType.label" default="Transaction Type" />
		
	</label>
	<g:textField name="transactionType" value="${BPItemInstance?.transactionType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: BPItemInstance, field: 'updatedDate', 'error')} required">
	<label for="updatedDate">
		<g:message code="BPItem.updatedDate.label" default="Updated Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${BPItemInstance?.updatedDate}"  />
</div>

