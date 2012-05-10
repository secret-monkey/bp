package bp

class BPTransaction {
	Integer id
	BPItem item
	BPUser seller
	BPUser buyer
	BigDecimal price
	BigDecimal buyerCommission
	BigDecimal sellerCommission
	Date transactionDate
	boolean transState
    static constraints = {
    }
}
