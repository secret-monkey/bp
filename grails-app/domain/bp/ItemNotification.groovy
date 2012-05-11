package bp

import java.util.Date;

class ItemNotification {
	SellItem item
	String message
	boolean standardMsg
	Date createdDate
	Date updatedDate
	static hasMany = [users:User,emails:String]
    static constraints = {
		message(blank:false)
    }
}
