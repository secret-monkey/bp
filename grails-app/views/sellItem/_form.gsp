<%@ page import="bp.SellItem" %>



<div class="fieldcontain ${hasErrors(bean: sellItemInstance, field: 'itemName', 'error')} required">
	<label for="itemName">
		<g:message code="sellItem.itemName.label" default="Item Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="itemName" maxlength="50" required="" value="${sellItemInstance?.itemName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sellItemInstance, field: 'itemKeywords', 'error')} required">
	<label for="itemKeywords">
		<g:message code="sellItem.itemKeywords.label" default="Item Keywords" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="itemKeywords" maxlength="100" required="" value="${sellItemInstance?.itemKeywords}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sellItemInstance, field: 'itemCondition', 'error')} required">
	<label for="itemCondition">
		<g:message code="sellItem.itemCondition.label" default="Item Condition" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="itemCondition" from="${sellItemInstance.constraints.itemCondition.inList}" required="" value="${sellItemInstance?.itemCondition}" valueMessagePrefix="sellItem.itemCondition"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sellItemInstance, field: 'itemConditionRating', 'error')} required">
	<label for="itemConditionRating">
		<g:message code="sellItem.itemConditionRating.label" default="Item Condition Rating" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="itemConditionRating" from="${1..5}" class="range" required="" value="${fieldValue(bean: sellItemInstance, field: 'itemConditionRating')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sellItemInstance, field: 'itemDescription', 'error')} ">
	<label for="itemDescription">
		<g:message code="sellItem.itemDescription.label" default="Item Description" />
		
	</label>
	<g:textArea name="itemDescription" cols="40" rows="5" maxlength="500" value="${sellItemInstance?.itemDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sellItemInstance, field: 'itemPrice', 'error')} required">
	<label for="itemPrice">
		<g:message code="sellItem.itemPrice.label" default="Item Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="itemPrice" min="0.0" max="10000000.00" required="" value="${fieldValue(bean: sellItemInstance, field: 'itemPrice')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sellItemInstance, field: 'itemImageURL', 'error')} ">
	<label for="itemImageURL">
		<g:message code="sellItem.itemImageURL.label" default="Item Image URL" />
		
	</label>
	<g:textField name="itemImageURL" value="${sellItemInstance?.itemImageURL}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sellItemInstance, field: 'active', 'error')} ">
	<label for="active">
		<g:message code="sellItem.active.label" default="Active" />
		
	</label>
	<g:checkBox name="active" value="${sellItemInstance?.active}" />
</div>

<div class="fieldcontain ${hasErrors(bean: sellItemInstance, field: 'allIncludedItemsAvailable', 'error')} ">
	<label for="allIncludedItemsAvailable">
		<g:message code="sellItem.allIncludedItemsAvailable.label" default="All Included Items Available" />
		
	</label>
	<g:checkBox name="allIncludedItemsAvailable" value="${sellItemInstance?.allIncludedItemsAvailable}" />
</div>
