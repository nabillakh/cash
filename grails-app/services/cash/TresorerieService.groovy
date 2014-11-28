package cash

import grails.transaction.Transactional

import compte.*

@Transactional
class TresorerieService {
    
    def analyseFinanciereService
    
    def analyseTresorerie(Liasse liasse, Liasse liasse2) {
            def graphique = new LinkedHashMap()
            def questionsSuivantes = []
            
            questionsSuivantes.add(tresorerieValeur(liasse,liasse2))
            questionsSuivantes.add(tresorerieEvolution(liasse,liasse2))
            questionsSuivantes.add(creditTresorerie(liasse, liasse2))
            graphique.put("questions suivantes",questionsSuivantes)
            
            return graphique
    }
    
    def tresorerieValeur(Liasse liasse,Liasse liasse2) {
        def theme = new LinkedHashMap()
        def questionsSuivantes = []
        def valeur = analyseFinanciereService.tresorerieNette(liasse)
        def borne1 = 0
        def borne2 
//        
//        theme.put("force" , "")
//        theme.put("faiblesse" , "")
//        theme.put("menace" , "")
//        theme.put("opportunité" , "")
        
        def question = "Est elle positive?" 
        theme.put("question", question)
        def reponse = ""
        def poids = 0
        println(borne1)
        println(borne2)
        println(valeur)
        if((borne1 < valeur) ) {
                reponse = "La trésorerie nette est positive : " + valeur + " k€"
                theme.put("force" , "Tresorerie Positive")
                questionsSuivantes.add(tresorerieEvolution(liasse, liasse2))
        }
        else {
            if((borne2 > valeur) ) {
                reponse = "La trésorerie nette est négative : " + valeur + " k€"   
                theme.put("faiblesse" , "Tresorerie négative")
                questionsSuivantes.add(tresorerieEvolution(liasse, liasse2))
            }
            else {
                reponse = "La trésorerie nette est négative : " + valeur + " k€"
                theme.put("faiblesse" , "Tresorerie négative") 
                questionsSuivantes.add(tresorerieEvolution(liasse, liasse2))
            }    
        }
                theme.put("reponse", reponse)
                theme.put("questions suivantes ", questionsSuivantes)
        return theme
    }
    def tresorerieEvolution(Liasse liasse, Liasse liasse2) {
        def theme = new LinkedHashMap()
        def questionsSuivantes = []
        def valeur = analyseFinanciereService.tresorerieNette(liasse) - analyseFinanciereService.tresorerieNette(liasse2)
        def borne1 = 0
        def borne2 
        def question = "Est elle en croissance?" 
        theme.put("question", question)
        def reponse = ""
        def poids = 0
        println(borne1)
        println(borne2)
        println(valeur)
        if((borne1 < valeur) ) {
                reponse = "La trésorerie nette croit en valeur de : " + valeur + " k€"
                theme.put("force" , "Tresorerie en croissance")
                questionsSuivantes.add(couvertureBFR(liasse, liasse2))
                questionsSuivantes.add(fondDeRoulementEvolution(liasse, liasse2))
        }
        else {
            if((borne2 > valeur) ) {
                reponse = "La trésorerie décroît en valeur de  : " + valeur     + " k€"
                theme.put("faiblesse" , "Tresorerie décroit")         
                questionsSuivantes.add(fondDeRoulementEvolution(liasse, liasse2))
            }
            else {
                reponse = "La trésorerie décroît en valeur de  : " + valeur     + " k€"
                theme.put("faiblesse" , "Tresorerie décroit")  
                questionsSuivantes.add(couvertureBFR(liasse, liasse2))
                questionsSuivantes.add(fondDeRoulementEvolution(liasse, liasse2))
            }    
        }
                theme.put("reponse", reponse)
                theme.put("questions suivantes ", questionsSuivantes)
        return theme
    }
    def tresorerieConcurrence() {
        
    }
    def tresorerieAutreRatio() {
        
    }
    
    def couvertureBFR(Liasse liasse, Liasse liasse2) {
        def theme = new LinkedHashMap()
        def valeur = Math.round(analyseFinanciereService.fondDeRoulement(liasse) / analyseFinanciereService.bFR(liasse)*100) /100
        def borne1 = 0.5
        def borne2 
        def question = "Est ce que le fond de roulement couvre correctement le BFR?" 
        theme.put("question", question)
        def reponse = ""
        def poids = 0
        println(borne1)
        println(borne2)
        println(valeur)
        if((borne1 < valeur) ) {
                reponse = "Le besoin en fond de roulement est correctement financé par le fond de roulement : " + valeur + " k€ (norme : > 0,5 "
                theme.put("force" , "Tresorerie en croissance")
        }
        else {
            if((borne2 > valeur) ) {
                reponse = "La trésorerie décroît en valeur de  : " + valeur     + " k€"
                theme.put("faiblesse" , "Tresorerie décroit")         
            }
            else {
                reponse = "La trésorerie décroît en valeur de  : " + valeur     + " k€"
                theme.put("faiblesse" , "Tresorerie décroit")         
            }    
        }
                theme.put("reponse", reponse)
        return theme
            
    }
    
    
    
    def creditTresorerie(Liasse liasse, Liasse liasse2) {
        def theme = new LinkedHashMap()
        def valeur = Math.round(analyseFinanciereService.creditCourtTerme(liasse) / analyseFinanciereService.creances(liasse)*1000) /10
        def borne1 
        def borne2 = 60
        def question = "Les dettes court terme sont elles couvertes par les créances ?" 
        theme.put("question", question)
        def reponse = ""
        def poids = 0
        println(borne1)
        println(borne2)
        println(valeur)
        if((borne1 < valeur) ) {
                reponse = "Les dettes CT ne sont pas correctement couvertes par les créances : " + valeur + " % (norme : < 60% )"
                theme.put("faiblesse" , "Crédit de trésorerie > 0.6") 
        }
        else {
            if((borne2 > valeur) ) {
                reponse = "Les dettes CT sont correctement couvertes par les créances : " + valeur + " % (norme : < 60% )"
                theme.put("force" , "Crédit de trésorerie")        
            }
            else {
                reponse = "Les dettes CT ne sont pas correctement couvertes par les créances : " + valeur + " % (norme : < 60%) "
                theme.put("faiblesse" , "Crédit de trésorerie > 0.6")          
            }    
        }
                theme.put("reponse", reponse)
        return theme
            
    }
    
    def endettementApparent(Liasse liasse, Liasse liasse2) {
        def theme = new LinkedHashMap()
       //mettre valeur
        def valeur = Math.round((analyseFinanciereService.creances(liasse) +  analyseFinanciereService.creditCourtTerme(liasse)) * 1000 ) /10
        def borne1 
        def borne2 = 60
        def question = "Les dettes court terme sont elles couvertes par les créances ?" 
        theme.put("question", question)
        def reponse = ""
        def poids = 0
        println(borne1)
        println(borne2)
        println(valeur)
        if((borne1 < valeur) ) {
                reponse = "Les dettes CT ne sont pas correctement couvertes par les créances : " + valeur + " % (norme : < 60% )"
                theme.put("faiblesse" , "Crédit de trésorerie > 0.6") 
        }
        else {
            if((borne2 > valeur) ) {
                reponse = "Les dettes CT sont correctement couvertes par les créances : " + valeur + " % (norme : < 60% )"
                theme.put("force" , "Crédit de trésorerie")        
            }
            else {
                reponse = "Les dettes CT ne sont pas correctement couvertes par les créances : " + valeur + " % (norme : < 60%) "
                theme.put("faiblesse" , "Crédit de trésorerie > 0.6")          
            }    
        }
                theme.put("reponse", reponse)
        return theme
            
    }
    def fondDeRoulementEvolution(Liasse liasse, Liasse liasse2) {
        def theme = new LinkedHashMap()
        def questionsSuivantes = []
       //mettre valeur
        def valeur = Math.round((analyseFinanciereService.fondDeRoulement(liasse) * 10 ) /10)
        def borne1 
        def borne2 = Math.round((analyseFinanciereService.fondDeRoulement(liasse2) * 10 ) /10)
        def question = "Comment évolue le Fond de roulement par rapport à l'exercice précédent ?" 
        theme.put("question", question)
        def reponse = ""
        def poids = 0
        if((borne1 < valeur) ) {
                reponse = "Le fond de roulement  : " + valeur + " % (norme : < 60% )"
        }
        else {
            if((borne2 > valeur) ) {
                reponse = "Le fond de roulement décroit en valeur cette année : " + (valeur - borne2) + " ke"  
                questionsSuivantes.add(fondDeRoulementCAEvolution(liasse, liasse2))
            }
            else {
                reponse = "Le fond de roulement croit en valeur cette année : " + (valeur - borne2) + " ke"     
                questionsSuivantes.add(fondDeRoulementCAEvolution(liasse, liasse2))    
            }    
        }
                theme.put("reponse", reponse)
                theme.put("questions suivantes ", questionsSuivantes)
        return theme
    }
    
    def fondDeRoulementCAEvolution(Liasse liasse, Liasse liasse2) {
        def theme = new LinkedHashMap()
       //mettre valeur
        def valeur = Math.round((analyseFinanciereService.fondDeRoulement(liasse) * 360 /  liasse.bilan.chiffreAffaires * 10 ) /10)
        def borne2 = Math.round((analyseFinanciereService.fondDeRoulement(liasse2) * 360 /  liasse2.bilan.chiffreAffaires * 10) /10)
        def question = "Comment évolue le Fond de roulement par rapport au CA?" 
        theme.put("question", question)
        def reponse = ""
        def poids = 0
        if((borne1 < valeur) ) {
                reponse = "Le fond de roulement  : " + valeur + " % (norme : < 60% )"
        }
        else {
            if((borne2 > valeur) ) {
                reponse = "Le fond de roulement évolue mois vite que le chiffre d'affaires : " + valeur + " % (norme : < 60% )"  
            }
            else {
                reponse = "Le fond de roulement évolue plus vite que le chiffre d'affaires : " + valeur + " % (norme : < 60%) "      
            }    
        }
                theme.put("reponse", reponse)
        return theme
            
    }
}
