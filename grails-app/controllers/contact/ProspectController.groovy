package contact



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProspectController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Prospect.list(params), model:[prospectInstanceCount: Prospect.count()]
    }
    
    def envoyer = {
        println("okdans controlleur")
        def message = params.message
        def mail = params.mail
        println(mail)
        def prospect = new Prospect(massage : message , mail :mail)
        prospect.save()
    }

    def show(Prospect prospectInstance) {
        respond prospectInstance
    }

    def create() {
        respond new Prospect(params)
    }

    @Transactional
    def save(Prospect prospectInstance) {
        if (prospectInstance == null) {
            notFound()
            return
        }

        if (prospectInstance.hasErrors()) {
            respond prospectInstance.errors, view:'create'
            return
        }

        prospectInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'prospectInstance.label', default: 'Prospect'), prospectInstance.id])
                redirect prospectInstance
            }
            '*' { respond prospectInstance, [status: CREATED] }
        }
    }

    def edit(Prospect prospectInstance) {
        respond prospectInstance
    }

    @Transactional
    def update(Prospect prospectInstance) {
        if (prospectInstance == null) {
            notFound()
            return
        }

        if (prospectInstance.hasErrors()) {
            respond prospectInstance.errors, view:'edit'
            return
        }

        prospectInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Prospect.label', default: 'Prospect'), prospectInstance.id])
                redirect prospectInstance
            }
            '*'{ respond prospectInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Prospect prospectInstance) {

        if (prospectInstance == null) {
            notFound()
            return
        }

        prospectInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Prospect.label', default: 'Prospect'), prospectInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'prospectInstance.label', default: 'Prospect'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
