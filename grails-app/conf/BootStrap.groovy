import bp.User
class BootStrap {

    def init = { servletContext ->
		new User(email:"shansrinivasan@yahoo.com",password:"password").save()
    }
    def destroy = {
    }
}
