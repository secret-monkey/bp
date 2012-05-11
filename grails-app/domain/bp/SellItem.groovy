package bp
class SellItem {
	public static TRANSACTION_TYPES = ["SELL","BUY"]
	public static CONDITION = ["NEW-UNOPENED","NEW-OPENED","USED","NOT-APPLICABLE"]
	Integer id
	String itemName
	String itemImageURL
	String itemKeywords
	String itemCondition = "NOT-APPLICABLE"
	int itemConditionRating
	boolean allIncludedItemsAvailable
	String itemDescription
	BigDecimal itemPrice
	boolean active
	Date createdDate = new Date()
	Date updatedDate
	BigDecimal listCharge
    static constraints = {
		itemName(blank:false,size:2..50)
		itemKeywords(blank:false,size:10..100)
		itemCondition(blank:false,inList:CONDITION,default:"NOT-APPLICABLE")
		itemConditionRating(range:1..5)
		itemDescription(blank:true,size:0..500)
		itemPrice(min:0.0,max:10000000.00)
		listCharge(min:0.0)
		updatedDate(nullable:true)
		itemImageURL(blank:true)
    }
}
