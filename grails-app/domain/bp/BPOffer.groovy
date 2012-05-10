package bp

class BPOffer {
	Integer id
	BPItem item
	BPUser offerUser
	boolean groupOffer
	BigDecimal price
	Date offerDate
	boolean accepted
    static constraints = {
		price(min:0.0)
    }
}
