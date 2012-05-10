package bp

import java.util.Date;

class BPUserMessages {
	Integer id
	BPUser from
	BPUser to
	String message
	Date createdDate
	Date updatedDate
	boolean userRead
	boolean active
    static constraints = {
    }
}
