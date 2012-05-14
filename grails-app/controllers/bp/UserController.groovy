package bp

import org.springframework.dao.DataIntegrityViolationException
import org.springframework.web.multipart.MultipartFile;


class UserController {

	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	def imageUploadService
	def burningImageService
	def index() {
		redirect(action: "list", params: params)
	}

	def list() {
		params.max = Math.min(params.max ? params.int('max') : 10, 100)
		[userInstanceList: User.list(params), userInstanceTotal: User.count()]
	}

	def create() {
		[userInstance: new User(params)]
	}
	def login() {
		render(view:"login")
	}

	def save() {
		User userInstance = new User(params)
		MultipartFile  picture1 = request.getFile("userPicture");
		String vloc = uploadFile(flash, userInstance, picture1)
			userInstance.pictureURL = vloc
			userInstance.createdDate = new Date()
			userInstance.updatedDate = new Date()
			if (!userInstance.save(flush: true)) {
				render(view: "create", model: [userInstance: userInstance])
				return
			}
		flash.message = message(code: 'default.created.message', args: [
			message(code: 'user.label', default: 'User'),
			userInstance.id
		])
		redirect(action: "show", id: userInstance.id)
	}

	private String uploadFile(Map flash, User userInstance, MultipartFile picture1) {
		String tempFileCanonicalPath = null
		def okcontents = [
			'image/png',
			'image/jpeg',
			'image/gif',
			"image/tiff"
		]
		if (! okcontents.contains(picture1.getContentType())) {
			flash.message = "Picture must be one of: ${okcontents}"
			render(view:'create', model:[user:userInstance])
			return;
		}
		def tempFile = File.createTempFile("blockparty", picture1.originalFilename)
		picture1.transferTo(tempFile)
		tempFileCanonicalPath = tempFile.canonicalPath
		burningImageService.doWith(tempFile.canonicalPath, tempFile.parentFile.canonicalPath).execute {
			it.scaleApproximate(800, 600)
		}
		String _file = picture1.originalFilename.replace(" ", "_");
		String vloc = userInstance.email.replace('@', 'AT').replace('.','DOT') + "/" + _file;
		String ext = _file.substring(_file.lastIndexOf(".")+1);
		imageUploadService.put (new FileInputStream(new File(tempFileCanonicalPath)), _file, "/"+userInstance.email.replace('@', 'AT').replace('.','DOT'), ext, new File(tempFileCanonicalPath).size())
		return vloc
	}

	def show() {
		def userInstance = User.get(params.id)
		if (!userInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'user.label', default: 'User'),
				params.id
			])
			redirect(action: "list")
			return
		}

		[userInstance: userInstance]
	}

	def edit() {
		def userInstance = User.get(params.id)
		if (!userInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'user.label', default: 'User'),
				params.id
			])
			redirect(action: "list")
			return
		}

		[userInstance: userInstance]
	}

	def update() {
		def userInstance = User.get(params.id)
		if (!userInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'user.label', default: 'User'),
				params.id
			])
			redirect(action: "list")
			return
		}

		if (params.version) {
			def version = params.version.toLong()
			if (userInstance.version > version) {
				userInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
						[
							message(code: 'user.label', default: 'User')]
						as Object[],
						"Another user has updated this User while you were editing")
				render(view: "edit", model: [userInstance: userInstance])
				return
			}
		}

		userInstance.properties = params

		if (!userInstance.save(flush: true)) {
			render(view: "edit", model: [userInstance: userInstance])
			return
		}

		flash.message = message(code: 'default.updated.message', args: [
			message(code: 'user.label', default: 'User'),
			userInstance.id
		])
		redirect(action: "show", id: userInstance.id)
	}

	def delete() {
		def userInstance = User.get(params.id)
		if (!userInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'user.label', default: 'User'),
				params.id
			])
			redirect(action: "list")
			return
		}

		try {
			userInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [
				message(code: 'user.label', default: 'User'),
				params.id
			])
			redirect(action: "list")
		}
		catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [
				message(code: 'user.label', default: 'User'),
				params.id
			])
			redirect(action: "show", id: params.id)
		}
	}
}
