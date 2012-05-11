package bp

import org.springframework.dao.DataIntegrityViolationException

class BuyItemController {
	def beforeInterceptor = [action:this.&checkUser]
	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	def checkUser() {
		if(!session.user) {
			// i.e. user not logged in
			redirect(controller:'user',action:'login')
			return false
		}
	}
	def index() {
		redirect(action: "list", params: params)
	}

	def list() {
		params.max = Math.min(params.max ? params.int('max') : 10, 100)
		[buyItemInstanceList: BuyItem.list(params), buyItemInstanceTotal: BuyItem.count()]
	}

	def create() {
		[buyItemInstance: new BuyItem(params)]
	}

	def save() {
		def buyItemInstance = new BuyItem(params)
		if (!buyItemInstance.save(flush: true)) {
			render(view: "create", model: [buyItemInstance: buyItemInstance])
			return
		}

		flash.message = message(code: 'default.created.message', args: [
			message(code: 'buyItem.label', default: 'BuyItem'),
			buyItemInstance.id
		])
		redirect(action: "show", id: buyItemInstance.id)
	}

	def show() {
		def buyItemInstance = BuyItem.get(params.id)
		if (!buyItemInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'buyItem.label', default: 'BuyItem'),
				params.id
			])
			redirect(action: "list")
			return
		}

		[buyItemInstance: buyItemInstance]
	}

	def edit() {
		def buyItemInstance = BuyItem.get(params.id)
		if (!buyItemInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'buyItem.label', default: 'BuyItem'),
				params.id
			])
			redirect(action: "list")
			return
		}

		[buyItemInstance: buyItemInstance]
	}

	def update() {
		def buyItemInstance = BuyItem.get(params.id)
		if (!buyItemInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'buyItem.label', default: 'BuyItem'),
				params.id
			])
			redirect(action: "list")
			return
		}

		if (params.version) {
			def version = params.version.toLong()
			if (buyItemInstance.version > version) {
				buyItemInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
						[
							message(code: 'buyItem.label', default: 'BuyItem')]
						as Object[],
						"Another user has updated this BuyItem while you were editing")
				render(view: "edit", model: [buyItemInstance: buyItemInstance])
				return
			}
		}

		buyItemInstance.properties = params

		if (!buyItemInstance.save(flush: true)) {
			render(view: "edit", model: [buyItemInstance: buyItemInstance])
			return
		}

		flash.message = message(code: 'default.updated.message', args: [
			message(code: 'buyItem.label', default: 'BuyItem'),
			buyItemInstance.id
		])
		redirect(action: "show", id: buyItemInstance.id)
	}

	def delete() {
		def buyItemInstance = BuyItem.get(params.id)
		if (!buyItemInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'buyItem.label', default: 'BuyItem'),
				params.id
			])
			redirect(action: "list")
			return
		}

		try {
			buyItemInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [
				message(code: 'buyItem.label', default: 'BuyItem'),
				params.id
			])
			redirect(action: "list")
		}
		catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [
				message(code: 'buyItem.label', default: 'BuyItem'),
				params.id
			])
			redirect(action: "show", id: params.id)
		}
	}
}
