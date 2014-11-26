package compte



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

import entreprises.*

@Transactional(readOnly = true)
class LiasseController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Liasse.list(params), model:[liasseInstanceCount: Liasse.count()]
    }

    def show(Liasse liasseInstance) {
        respond liasseInstance
    }

    def create() {
        respond new Liasse(params)
    }

    @Transactional
    def save(Liasse liasseInstance) {
        if (liasseInstance == null) {
            notFound()
            return
        }

        if (liasseInstance.hasErrors()) {
            respond liasseInstance.errors, view:'create'
            return
        }

        liasseInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'liasseInstance.label', default: 'Liasse'), liasseInstance.id])
                redirect liasseInstance
            }
            '*' { respond liasseInstance, [status: CREATED] }
        }
    }

    def edit(Liasse liasseInstance) {
        respond liasseInstance
    }

    @Transactional
    def update(Liasse liasseInstance) {
        if (liasseInstance == null) {
            notFound()
            return
        }

        if (liasseInstance.hasErrors()) {
            respond liasseInstance.errors, view:'edit'
            return
        }

        liasseInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Liasse.label', default: 'Liasse'), liasseInstance.id])
                redirect liasseInstance
            }
            '*'{ respond liasseInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Liasse liasseInstance) {

        if (liasseInstance == null) {
            notFound()
            return
        }

        liasseInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Liasse.label', default: 'Liasse'), liasseInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'liasseInstance.label', default: 'Liasse'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
    
    def compte() {
        println("dans contro")
        def liasseInstance = Liasse.get(Long.parseLong(params.liasseInstance))
        println(liasseInstance)
        
        [liasseInstance : liasseInstance]
    }
    def liasseAnnuelle() {
        println("liasse annuelle")
        def liasseInstance = Liasse.get(Long.parseLong(params.liasseInstance))
        [liasseInstance : liasseInstance]
    }
}
