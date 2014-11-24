package cash

import grails.transaction.Transactional
import entreprises.*
import java.math.*

@Transactional
class PointDeVueService {

    def serviceMethod() {

    }
    
    def fournisseur(Entreprise entreprise) {
        def mesClients = entreprise.clients
        
        def analyse = new LinkedHashMap()       
        analyse.put("Nom :", "nom")
        
        if(!mesClients) {
            // créer un nouveau mesclients avec boite connectee
        }
        else {
            mesClients.each() {relationClient -> 
                dependance(entreprise, relationClient)
                
            }
        }
        
        endettement(entreprise)
        
    }
    
    def dependance(Entreprise entreprise, Fournisseur entrepriseCible) { 
        // dependance de l'entreprise cible vis a vis de nous
        def monClient = entrepriseCible.part
        def i = 0
       // monClient.mesLiasses.Each() {}
               
    }
    
    def endettement (Entreprise entreprise) {
        def i = 0
        def solvabilite = 0
        def capitauxPropres = []
        def actifs = []
        entreprise.mesLiasses.each() { liasse ->
            i= i+1
            //on ne prend que les 3 derniers exercices.
            if(i<4) {
                def annee = liasse.annee
                solvabilite = min((liasse.ratio.solvabiliteSurActif),solvabilite)
                capitauxPropres.add(liasse.bilan.capital + liasse.bilan.autresCapitauxPropres)
                actifs.add(liasse.bilan.stock +
                            liasse.bilan.creances +
                            liasse.bilan.autresActifsCirculants +
                            liasse.bilan.valeursDisponibles)
                
            }
            
        }
        def risqueSolvabilite = ""
        def reponseSolvabilite = ""
        if(solvabilite < 0.3) {
            risqueSolvabilite = "FORT"
            reponseSolvabilite = "La société "+ entreprise.nom +" est endettée. Elle a des difficultés pour financer sa dette. Il convient de définir les actions à mettre en œuvre et de suivre l'évolution de la situation."
        }
        else {
            if(solvabilite < 0.5) {
                risqueSolvabilite = "MODERE"
                reponseSolvabilite = "La société "+ entreprise.nom +" semble avoir des difficultés pour financer sa dette. Il convient d'en déterminer les raisons (fort investissement, problème de rentabilité, difficulté particulière, etc.), et de surveiller l'évolution de la situation."
            }
            else {
                risqueSolvabilite = "FAIBLE"
                reponseSolvabilite= "La société "+ entreprise.nom +" n'a pas de difficultés pour financer sa dette."
            }
            
        }
                
       
    }
    
}
