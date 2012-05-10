package bp

import org.springframework.dao.DataIntegrityViolationException

class BPItemController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [BPItemInstanceList: BPItem.list(params), BPItemInstanceTotal: BPItem.count()]
    }

    def create() {
        [BPItemInstance: new BPItem(params)]
    }

    def save() {
        def BPItemInstance = new BPItem(params)
        if (!BPItemInstance.save(flush: true)) {
            render(view: "create", model: [BPItemInstance: BPItemInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'BPItem.label', default: 'BPItem'), BPItemInstance.id])
        redirect(action: "show", id: BPItemInstance.id)
    }

    def show() {
        def BPItemInstance = BPItem.get(params.id)
        if (!BPItemInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'BPItem.label', default: 'BPItem'), params.id])
            redirect(action: "list")
            return
        }

        [BPItemInstance: BPItemInstance]
    }

    def edit() {
        def BPItemInstance = BPItem.get(params.id)
        if (!BPItemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'BPItem.label', default: 'BPItem'), params.id])
            redirect(action: "list")
            return
        }

        [BPItemInstance: BPItemInstance]
    }

    def update() {
        def BPItemInstance = BPItem.get(params.id)
        if (!BPItemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'BPItem.label', default: 'BPItem'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (BPItemInstance.version > version) {
                BPItemInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'BPItem.label', default: 'BPItem')] as Object[],
                          "Another user has updated this BPItem while you were editing")
                render(view: "edit", model: [BPItemInstance: BPItemInstance])
                return
            }
        }

        BPItemInstance.properties = params

        if (!BPItemInstance.save(flush: true)) {
            render(view: "edit", model: [BPItemInstance: BPItemInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'BPItem.label', default: 'BPItem'), BPItemInstance.id])
        redirect(action: "show", id: BPItemInstance.id)
    }

    def delete() {
        def BPItemInstance = BPItem.get(params.id)
        if (!BPItemInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'BPItem.label', default: 'BPItem'), params.id])
            redirect(action: "list")
            return
        }

        try {
            BPItemInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'BPItem.label', default: 'BPItem'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'BPItem.label', default: 'BPItem'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
