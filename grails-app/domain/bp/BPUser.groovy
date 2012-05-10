package bp

class BPUser {
	Integer id
	String username
	String password
	String pictURL
	String aboutMe
	String firstName
	String LastName
	String address1
	String address2
	String city
	String zipcode
	String email
	String phone
	String extn
	Date createdDate
	Date updatedDate
	int rating = 50
	static hasMany = [toSell:BPItem,toBuy:BPItem,bought:BPItem,sold:BPItem, friends:BPUser]
    static constraints = {
		username(range:0-15)
		password(range:5-15)
		aboutMe(range:0-100)
		firstName(range:0-100)
    }
}
