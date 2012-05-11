package bp

import java.util.Date;

class UserMessages {
	Integer id
	User from
	User to
	String message
	Date createdDate
	Date updatedDate
	boolean userRead
	boolean active
    static constraints = {
    }
}
