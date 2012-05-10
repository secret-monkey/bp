package bp

import java.util.Date;

class BPFeedback {
	Integer id 
	BPUser seller
	BPUser buyer
	int rating
	String experience
	String description
	Date createdDate
	Date updatedDate
    static constraints = {
		rating(range:0-5)
		experience(size:15)
		description(size:200)
    }
}
