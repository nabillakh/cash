package compte



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CresController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Cres.list(params), model:[cresInstanceCount: Cres.count()]
    }

    def show(Cres cresInstance) {
        respond cresInstance
    }

    def create() {
        respond new Cres(params)
    }

    @Transactional
    def save(Cres cresInstance) {
        if (cresInstance == null) {
            notFound()
            return
        }

        if (cresInstance.hasErrors()) {
            respond cresInstance.errors, view:'create'
            return
        }

        cresInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'cresInstance.label', default: 'Cres'), cresInstance.id])
                redirect cresInstance
            }
            '*' { respond cresInstance, [status: CREATED] }
        }
    }

    def edit(Cres cresInstance) {
        respond cresInstance
    }

    @Transactional
    def update(Cres cresInstance) {
        if (cresInstance == null) {
            notFound()
            return
        }

        if (cresInstance.hasErrors()) {
            respond cresInstance.errors, view:'edit'
            return
        }

        cresInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Cres.label', default: 'Cres'), cresInstance.id])
                redirect cresInstance
            }
            '*'{ respond cresInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Cres cresInstance) {

        if (cresInstance == null) {
            notFound()
            return
        }

        cresInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Cres.label', default: 'Cres'), cresInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'cresInstance.label', default: 'Cres'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
