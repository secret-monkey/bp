package bp

import java.util.Date;

class Group {
	Integer id
	User groupModerator
	SellItem item
	static hasMany = [users:User]
	Date createdDate
	Date updatedDate
    static constraints = {
    }
}
