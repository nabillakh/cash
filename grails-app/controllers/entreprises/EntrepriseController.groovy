package entreprises



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.converters.JSON

import cash.*

@Transactional(readOnly = true)
class EntrepriseController {

    def pointDeVueService
    
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Entreprise.list(params), model:[entrepriseInstanceCount: Entreprise.count()]
    }

    def show(Entreprise entrepriseInstance) {
        respond entrepriseInstance
    }

    def create() {
        respond new Entreprise(params)
    }

    @Transactional
    def save(Entreprise entrepriseInstance) {
        if (entrepriseInstance == null) {
            notFound()
            return
        }

        if (entrepriseInstance.hasErrors()) {
            respond entrepriseInstance.errors, view:'create'
            return
        }

        entrepriseInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'entrepriseInstance.label', default: 'Entreprise'), entrepriseInstance.id])
                redirect entrepriseInstance
            }
            '*' { respond entrepriseInstance, [status: CREATED] }
        }
    }

    def edit(Entreprise entrepriseInstance) {
        respond entrepriseInstance
    }

    @Transactional
    def update(Entreprise entrepriseInstance) {
        if (entrepriseInstance == null) {
            notFound()
            return
        }

        if (entrepriseInstance.hasErrors()) {
            respond entrepriseInstance.errors, view:'edit'
            return
        }

        entrepriseInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Entreprise.label', default: 'Entreprise'), entrepriseInstance.id])
                redirect entrepriseInstance
            }
            '*'{ respond entrepriseInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Entreprise entrepriseInstance) {

        if (entrepriseInstance == null) {
            notFound()
            return
        }

        entrepriseInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Entreprise.label', default: 'Entreprise'), entrepriseInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'entrepriseInstance.label', default: 'Entreprise'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
    
    
    @Transactional
    def vueFournisseur() {
        def entrepriseInstance = Entreprise.get(params.entrepriseInstance)
        def solvabilite = pointDeVueService.solvabilite(entrepriseInstance)
        def capaciteInteret = pointDeVueService.capaciteInteret(entrepriseInstance)
        def liquiditeGenerale = pointDeVueService.liquiditeGenerale(entrepriseInstance)
        def evolutionCA = pointDeVueService.evolutionCA(entrepriseInstance)
        def margeOperationnelle = pointDeVueService.margeOperationnelle(entrepriseInstance)
        def rentabiliteNette = pointDeVueService.rentabiliteNette(entrepriseInstance)
        
        def liste = []
        
        liste << solvabilite
        liste << capaciteInteret
        liste << liquiditeGenerale
        liste << evolutionCA
        liste << margeOperationnelle
        liste << rentabiliteNette      
        
        [entrepriseInstance : entrepriseInstance, liste : liste]
        // render liste2 as JSON
    }
    
    def liasse() {
        def entrepriseInstance = Entreprise.get(Long.parseLong(params.entrepriseInstance))
        def annees = []
        def anneeMax = 2000
        entrepriseInstance.mesLiasses.each() { liasse ->
            if(anneeMax < liasse.annee) {
                anneeMax = liasse.annee
            }
        }
        
        entrepriseInstance.mesLiasses.each() { liasse ->
            def annee = new LinkedHashMap()
            annee.put("annee", liasse.annee)
            if(liasse.annee == anneeMax) {
                annee.put("actif", true)
            }
            else {
                annee.put("actif", false)
            }
            annee.put("liasse",liasse.id)
            annees << (annee)
            println(annee)
        }
        [entrepriseInstance : entrepriseInstance, annees : annees]
    }
        
    def general() {
        
        def entrepriseInstance = Entreprise.get(Long.parseLong(params.entrepriseInstance))
        def nbliasse = entrepriseInstance.mesLiasses.size()
        def liasseInstance = entrepriseInstance.mesLiasses.getAt(0)
        def liasseInstance2 = entrepriseInstance.mesLiasses.getAt(1)
        
        
        def reponse = new LinkedHashMap()
        reponse.put("nom",entrepriseInstance.nom)
        reponse.put("siren",entrepriseInstance.siren)
        reponse.put("chiffreAffaires", Math.round(Double.valueOf((liasseInstance.cres.chiffreAffaires)).longValue() / 1000))
        def ca1 = Double.valueOf((liasseInstance.cres.chiffreAffaires)).longValue()
        def ca2 = Double.valueOf((liasseInstance2.cres.chiffreAffaires)).longValue()
        def ca3 = ca1 - ca2
        def evol = ca3 / ca2 *100
        println(evol)
        println(ca1)
        println(ca2)
        reponse.put("evolCa", Math.round( evol))
        reponse.put("capital",Math.round(Double.valueOf(liasseInstance.bilan.capital).longValue() / 1000))
        reponse.put("resultatNet",Math.round(Double.valueOf(liasseInstance.cres.resultat).longValue() / 1000))
        
        println("dans ganeral" + liasseInstance.annee)
        
        [entrepriseInstance : entrepriseInstance, reponse : reponse]
    }
    
    def financier() {
        
        def entrepriseInstance = Entreprise.get(Long.parseLong(params.entrepriseInstance))
        def rendementCapitauxPropres = pointDeVueService.rendementCapitauxPropres(entrepriseInstance)
        def rendementCapitalInvesti = pointDeVueService.rendementCapitalInvesti(entrepriseInstance)
        def performance = pointDeVueService.performance(entrepriseInstance)
        def liquiditeReduite = pointDeVueService.liquiditeReduite(entrepriseInstance)
        def liquidite = pointDeVueService.liquidite(entrepriseInstance)
        def creditClient = pointDeVueService.creditClient(entrepriseInstance)
        def liste = []
        
        liste << rendementCapitauxPropres  
        liste << rendementCapitalInvesti
        liste << performance
        liste << liquiditeReduite
        liste << liquidite
        liste << creditClient
        
        println(liste)
        [entrepriseInstance : entrepriseInstance, liste : liste]
        // render liste2 as JSON
            
    }
    
}
