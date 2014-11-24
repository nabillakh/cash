package compte



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RatiosController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Ratios.list(params), model:[ratiosInstanceCount: Ratios.count()]
    }

    def show(Ratios ratiosInstance) {
        respond ratiosInstance
    }

    def create() {
        respond new Ratios(params)
    }

    @Transactional
    def save(Ratios ratiosInstance) {
        if (ratiosInstance == null) {
            notFound()
            return
        }

        if (ratiosInstance.hasErrors()) {
            respond ratiosInstance.errors, view:'create'
            return
        }

        ratiosInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'ratiosInstance.label', default: 'Ratios'), ratiosInstance.id])
                redirect ratiosInstance
            }
            '*' { respond ratiosInstance, [status: CREATED] }
        }
    }

    def edit(Ratios ratiosInstance) {
        respond ratiosInstance
    }

    @Transactional
    def update(Ratios ratiosInstance) {
        if (ratiosInstance == null) {
            notFound()
            return
        }

        if (ratiosInstance.hasErrors()) {
            respond ratiosInstance.errors, view:'edit'
            return
        }

        ratiosInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Ratios.label', default: 'Ratios'), ratiosInstance.id])
                redirect ratiosInstance
            }
            '*'{ respond ratiosInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Ratios ratiosInstance) {

        if (ratiosInstance == null) {
            notFound()
            return
        }

        ratiosInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Ratios.label', default: 'Ratios'), ratiosInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'ratiosInstance.label', default: 'Ratios'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
