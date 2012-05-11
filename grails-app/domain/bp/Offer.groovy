package bp

class Offer {
	Integer id
	SellItem item
	User offerUser
	boolean groupOffer
	BigDecimal price
	Date offerDate
	boolean accepted
    static constraints = {
		price(min:0.0)
    }
}
