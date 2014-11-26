package compte



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BilanSimplifieController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond BilanSimplifie.list(params), model:[bilanSimplifieInstanceCount: BilanSimplifie.count()]
    }

    def show(BilanSimplifie bilanSimplifieInstance) {
        respond bilanSimplifieInstance
    }

    def create() {
        respond new BilanSimplifie(params)
    }

    @Transactional
    def save(BilanSimplifie bilanSimplifieInstance) {
        if (bilanSimplifieInstance == null) {
            notFound()
            return
        }

        if (bilanSimplifieInstance.hasErrors()) {
            respond bilanSimplifieInstance.errors, view:'create'
            return
        }

        bilanSimplifieInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'bilanSimplifieInstance.label', default: 'BilanSimplifie'), bilanSimplifieInstance.id])
                redirect bilanSimplifieInstance
            }
            '*' { respond bilanSimplifieInstance, [status: CREATED] }
        }
    }

    def edit(BilanSimplifie bilanSimplifieInstance) {
        respond bilanSimplifieInstance
    }

    @Transactional
    def update(BilanSimplifie bilanSimplifieInstance) {
        if (bilanSimplifieInstance == null) {
            notFound()
            return
        }

        if (bilanSimplifieInstance.hasErrors()) {
            respond bilanSimplifieInstance.errors, view:'edit'
            return
        }

        bilanSimplifieInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'BilanSimplifie.label', default: 'BilanSimplifie'), bilanSimplifieInstance.id])
                redirect bilanSimplifieInstance
            }
            '*'{ respond bilanSimplifieInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(BilanSimplifie bilanSimplifieInstance) {

        if (bilanSimplifieInstance == null) {
            notFound()
            return
        }

        bilanSimplifieInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'BilanSimplifie.label', default: 'BilanSimplifie'), bilanSimplifieInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'bilanSimplifieInstance.label', default: 'BilanSimplifie'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
