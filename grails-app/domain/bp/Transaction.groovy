package bp

class Transaction {
	Integer id
	SellItem item
	User seller
	User buyer
	BigDecimal price
	BigDecimal buyerCommission
	BigDecimal sellerCommission
	Date transactionDate
	boolean transState
    static constraints = {
    }
}
