package bp

class User {
	Integer id
	String email
	String password
	String pictureURL
	String aboutMe
	String firstName
	String lastName
	String address1
	String address2
	String city
	String state
	String zipcode
	String country
	String phone
	String extn
	Date createdDate
	Date updatedDate
	int rating = 50
	static hasMany = [toSell:SellItem,toBuy:SellItem,bought:SellItem,sold:SellItem, friends:User]
    static constraints = {
		email(email:true)
		password(size:5..15)
		aboutMe(blank:true,size:0..100)
		firstName(size:0..50)
		lastName(size:0..50)
		address1(size:0..50)
		address2(blank:true,size:0..50)
		city(size:0..10)
		state(size:0..10)
		zipcode(size:0..10)
		country(size:0..10)
		phone(size:0..20)
		extn(size:0..10)

	}
}
