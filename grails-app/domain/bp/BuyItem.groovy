package bp
class BuyItem {
	Integer id
	String itemName
	String sampleItemImageURL
	String itemKeywords
	String itemDescription
	boolean active
	Date createdDate = new Date();
	Date updatedDate
	BigDecimal listCharge
    static constraints = {
		itemName(blank:false,size:2..50)
		itemKeywords(blank:false,size:10..100)
		itemDescription(blank:true,size:0..500)
		listCharge(nullable:true,min:0.0,default:0.0)
		updatedDate(nullable:true)
		sampleItemImageURL(blank:true)
    }
}
