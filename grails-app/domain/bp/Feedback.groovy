package bp

import java.util.Date;

class Feedback {
	Integer id 
	User seller
	User buyer
	int rating
	String experience
	String description
	Date createdDate
	Date updatedDate
    static constraints = {
		rating(range:0..5)
		experience(size:0..15)
		description(size:0..200)
    }
}
