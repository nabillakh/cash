package contact



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.converters.JSON

@Transactional(readOnly = true)
class JeuController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Jeu.list(params), model:[jeuInstanceCount: Jeu.count()]
    }

    def show(Jeu jeuInstance) {
        respond jeuInstance
    }

    def create() {
        respond new Jeu(params)
    }

    @Transactional
    def save(Jeu jeuInstance) {
        if (jeuInstance == null) {
            notFound()
            return
        }

        if (jeuInstance.hasErrors()) {
            respond jeuInstance.errors, view:'create'
            return
        }

        jeuInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'jeuInstance.label', default: 'Jeu'), jeuInstance.id])
                redirect jeuInstance
            }
            '*' { respond jeuInstance, [status: CREATED] }
        }
    }

    def edit(Jeu jeuInstance) {
        respond jeuInstance
    }

    @Transactional
    def update(Jeu jeuInstance) {
        if (jeuInstance == null) {
            notFound()
            return
        }

        if (jeuInstance.hasErrors()) {
            respond jeuInstance.errors, view:'edit'
            return
        }

        jeuInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Jeu.label', default: 'Jeu'), jeuInstance.id])
                redirect jeuInstance
            }
            '*'{ respond jeuInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Jeu jeuInstance) {

        if (jeuInstance == null) {
            notFound()
            return
        }

        jeuInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Jeu.label', default: 'Jeu'), jeuInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'jeuInstance.label', default: 'Jeu'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
    
    def questions() {
        
        
        def questions = []
        def question = new LinkedHashMap()
        
        def reponses = []
        
        def reponse = new LinkedHashMap()
        reponse.put("texte" , "une reponse")
        reponse.put("correct" , true)
        def reponse2 = new LinkedHashMap()
        reponse2.put("texte" , "22 reponse")
        reponse2.put("correct" , true)
        
        reponses << reponse
        reponses << reponse2
        
        question.put("question", "alors??")
        question.put("answers",reponse)
        question.put("value",122)
        
        questions << question
        
        def categories = []
        def categorie = new LinkedHashMap()
        
        categorie.put("name","cat1")
        categorie.put("questions",question)
        
        categories << categorie
      
        println("dans contreoleur : " + categories)
      
        [categories : categories]
        render categories as JSON
        
    }
}
