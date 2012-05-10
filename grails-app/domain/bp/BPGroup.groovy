package bp

import java.util.Date;

class BPGroup {
	Integer id
	BPUser groupModerator
	BPItem item
	static hasMany = [users:BPUser]
	Date createdDate
	Date updatedDate
    static constraints = {
    }
}
