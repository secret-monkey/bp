package bp
class BPItem {
	public static SELL = "S"
	public static BUY = "B"
	Integer id
	String itemName
	String itemImageURL
	String itemKeywords
	String itemCondition
	String itemDescription
	BigDecimal itemPrice
	String transactionType
	boolean active
	Date createdDate
	Date updatedDate
	BigDecimal listCharge
    static constraints = {
		itemName(blank:false,size:10)
		itemKeywords(blank:false,size:100)
		itemCondition(blank:false,size:100)
		itemDescription(blank:true,size:500)
		itemPrice(min:0.0)
		transactionType(inList:[SELL,BUY])
		listCharge(min:0.0)
    }
}
