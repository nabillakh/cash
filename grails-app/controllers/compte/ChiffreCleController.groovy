package compte



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ChiffreCleController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ChiffreCle.list(params), model:[chiffreCleInstanceCount: ChiffreCle.count()]
    }

    def show(ChiffreCle chiffreCleInstance) {
        respond chiffreCleInstance
    }

    def create() {
        respond new ChiffreCle(params)
    }

    @Transactional
    def save(ChiffreCle chiffreCleInstance) {
        if (chiffreCleInstance == null) {
            notFound()
            return
        }

        if (chiffreCleInstance.hasErrors()) {
            respond chiffreCleInstance.errors, view:'create'
            return
        }

        chiffreCleInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'chiffreCleInstance.label', default: 'ChiffreCle'), chiffreCleInstance.id])
                redirect chiffreCleInstance
            }
            '*' { respond chiffreCleInstance, [status: CREATED] }
        }
    }

    def edit(ChiffreCle chiffreCleInstance) {
        respond chiffreCleInstance
    }

    @Transactional
    def update(ChiffreCle chiffreCleInstance) {
        if (chiffreCleInstance == null) {
            notFound()
            return
        }

        if (chiffreCleInstance.hasErrors()) {
            respond chiffreCleInstance.errors, view:'edit'
            return
        }

        chiffreCleInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ChiffreCle.label', default: 'ChiffreCle'), chiffreCleInstance.id])
                redirect chiffreCleInstance
            }
            '*'{ respond chiffreCleInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ChiffreCle chiffreCleInstance) {

        if (chiffreCleInstance == null) {
            notFound()
            return
        }

        chiffreCleInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ChiffreCle.label', default: 'ChiffreCle'), chiffreCleInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'chiffreCleInstance.label', default: 'ChiffreCle'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
