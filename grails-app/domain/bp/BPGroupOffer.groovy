package bp

import java.util.Date;

class BPGroupOffer {
	Integer id
	BPGroup bpGroup
	BPUser user
	BigDecimal offerprice
	Date createdDate
	Date updatedDate
    static constraints = {
    }
}
