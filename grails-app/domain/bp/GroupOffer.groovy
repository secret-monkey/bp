package bp

import java.util.Date;

class GroupOffer {
	Integer id
	Group bpGroup
	User user
	BigDecimal offerprice
	Date createdDate
	Date updatedDate
    static constraints = {
    }
}
