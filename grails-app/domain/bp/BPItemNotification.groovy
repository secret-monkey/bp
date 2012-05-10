package bp

import java.util.Date;

class BPItemNotification {
	BPItem item
	String message
	boolean standardMsg
	Date createdDate
	Date updatedDate
	static hasMany = [users:BPUser,emails:String]
    static constraints = {
		message(blank:false)
    }
}
