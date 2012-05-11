package bp

import org.springframework.dao.DataIntegrityViolationException

class FeedbackController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [BPFeedbackInstanceList: Feedback.list(params), BPFeedbackInstanceTotal: Feedback.count()]
    }

    def create() {
        [BPFeedbackInstance: new Feedback(params)]
    }

    def save() {
        def BPFeedbackInstance = new Feedback(params)
        if (!BPFeedbackInstance.save(flush: true)) {
            render(view: "create", model: [BPFeedbackInstance: BPFeedbackInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'BPFeedback.label', default: 'BPFeedback'), BPFeedbackInstance.id])
        redirect(action: "show", id: BPFeedbackInstance.id)
    }

    def show() {
        def BPFeedbackInstance = Feedback.get(params.id)
        if (!BPFeedbackInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'BPFeedback.label', default: 'BPFeedback'), params.id])
            redirect(action: "list")
            return
        }

        [BPFeedbackInstance: BPFeedbackInstance]
    }

    def edit() {
        def BPFeedbackInstance = Feedback.get(params.id)
        if (!BPFeedbackInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'BPFeedback.label', default: 'BPFeedback'), params.id])
            redirect(action: "list")
            return
        }

        [BPFeedbackInstance: BPFeedbackInstance]
    }

    def update() {
        def BPFeedbackInstance = Feedback.get(params.id)
        if (!BPFeedbackInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'BPFeedback.label', default: 'BPFeedback'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (BPFeedbackInstance.version > version) {
                BPFeedbackInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'BPFeedback.label', default: 'BPFeedback')] as Object[],
                          "Another user has updated this BPFeedback while you were editing")
                render(view: "edit", model: [BPFeedbackInstance: BPFeedbackInstance])
                return
            }
        }

        BPFeedbackInstance.properties = params

        if (!BPFeedbackInstance.save(flush: true)) {
            render(view: "edit", model: [BPFeedbackInstance: BPFeedbackInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'BPFeedback.label', default: 'BPFeedback'), BPFeedbackInstance.id])
        redirect(action: "show", id: BPFeedbackInstance.id)
    }

    def delete() {
        def BPFeedbackInstance = Feedback.get(params.id)
        if (!BPFeedbackInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'BPFeedback.label', default: 'BPFeedback'), params.id])
            redirect(action: "list")
            return
        }

        try {
            BPFeedbackInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'BPFeedback.label', default: 'BPFeedback'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'BPFeedback.label', default: 'BPFeedback'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
