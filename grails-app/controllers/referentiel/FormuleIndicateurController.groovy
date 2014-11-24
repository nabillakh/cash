package referentiel



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FormuleIndicateurController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond FormuleIndicateur.list(params), model:[formuleIndicateurInstanceCount: FormuleIndicateur.count()]
    }

    def show(FormuleIndicateur formuleIndicateurInstance) {
        respond formuleIndicateurInstance
    }

    def create() {
        respond new FormuleIndicateur(params)
    }

    @Transactional
    def save(FormuleIndicateur formuleIndicateurInstance) {
        if (formuleIndicateurInstance == null) {
            notFound()
            return
        }

        if (formuleIndicateurInstance.hasErrors()) {
            respond formuleIndicateurInstance.errors, view:'create'
            return
        }

        formuleIndicateurInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'formuleIndicateurInstance.label', default: 'FormuleIndicateur'), formuleIndicateurInstance.id])
                redirect formuleIndicateurInstance
            }
            '*' { respond formuleIndicateurInstance, [status: CREATED] }
        }
    }

    def edit(FormuleIndicateur formuleIndicateurInstance) {
        respond formuleIndicateurInstance
    }

    @Transactional
    def update(FormuleIndicateur formuleIndicateurInstance) {
        if (formuleIndicateurInstance == null) {
            notFound()
            return
        }

        if (formuleIndicateurInstance.hasErrors()) {
            respond formuleIndicateurInstance.errors, view:'edit'
            return
        }

        formuleIndicateurInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FormuleIndicateur.label', default: 'FormuleIndicateur'), formuleIndicateurInstance.id])
                redirect formuleIndicateurInstance
            }
            '*'{ respond formuleIndicateurInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FormuleIndicateur formuleIndicateurInstance) {

        if (formuleIndicateurInstance == null) {
            notFound()
            return
        }

        formuleIndicateurInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FormuleIndicateur.label', default: 'FormuleIndicateur'), formuleIndicateurInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formuleIndicateurInstance.label', default: 'FormuleIndicateur'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
