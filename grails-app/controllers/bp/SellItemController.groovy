package bp

import org.springframework.dao.DataIntegrityViolationException

class SellItemController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [sellItemInstanceList: SellItem.list(params), sellItemInstanceTotal: SellItem.count()]
    }

    def create() {
        [sellItemInstance: new SellItem(params)]
    }

    def save() {
        def sellItemInstance = new SellItem(params)
        if (!sellItemInstance.save(flush: true)) {
            render(view: "create", model: [sellItemInstance: sellItemInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'sellItem.label', default: 'SellItem'), sellItemInstance.id])
        redirect(action: "show", id: sellItemInstance.id)
    }

    def show() {
        def sellItemInstance = SellItem.get(params.id)
        if (!sellItemInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'sellItem.label', default: 'SellItem'), params.id])
            redirect(action: "list")
            return
        }

        [sellItemInstance: sellItemInstance]
    }

    def edit() {
        def sellItemInstance = SellItem.get(params.id)
        if (!sellItemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sellItem.label', default: 'SellItem'), params.id])
            redirect(action: "list")
            return
        }

        [sellItemInstance: sellItemInstance]
    }

    def update() {
        def sellItemInstance = SellItem.get(params.id)
        if (!sellItemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sellItem.label', default: 'SellItem'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (sellItemInstance.version > version) {
                sellItemInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'sellItem.label', default: 'SellItem')] as Object[],
                          "Another user has updated this SellItem while you were editing")
                render(view: "edit", model: [sellItemInstance: sellItemInstance])
                return
            }
        }

        sellItemInstance.properties = params

        if (!sellItemInstance.save(flush: true)) {
            render(view: "edit", model: [sellItemInstance: sellItemInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'sellItem.label', default: 'SellItem'), sellItemInstance.id])
        redirect(action: "show", id: sellItemInstance.id)
    }

    def delete() {
        def sellItemInstance = SellItem.get(params.id)
        if (!sellItemInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'sellItem.label', default: 'SellItem'), params.id])
            redirect(action: "list")
            return
        }

        try {
            sellItemInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'sellItem.label', default: 'SellItem'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'sellItem.label', default: 'SellItem'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
