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
        
        solvabilite(entreprise)
        
    }
    
    def dependance(Entreprise entreprise, Fournisseur entrepriseCible) { 
        // dependance de l'entreprise cible vis a vis de nous
        def monClient = entrepriseCible.part
        def i = 0
       // monClient.mesLiasses.Each() {}
               
    }
    
    def solvabilite(Entreprise entreprise) {
        def i =0
        def solvabilite = 100
        def capitauxPropres = []
        def actifs = []
        entreprise.mesLiasses.each() { liasse ->
            i= i+1
            //on ne prend que les 3 derniers exercices.
            if(i<4) {
                def annee = liasse.annee
                println(liasse.ratio.solvabiliteSurActif)
                def indicateur = Float.parseFloat(liasse.ratio.solvabiliteSurActif)
                if( indicateur <solvabilite) {
                        solvabilite = indicateur
                }
                capitauxPropres.add(liasse.bilan.capital + liasse.bilan.autresCapitauxPropres)
                actifs.add(liasse.bilan.stock +
                            liasse.bilan.creances +
                            liasse.bilan.autresActifsCirculants +
                            liasse.bilan.valeursDisponibles)
                
            }
            
        }
        def risqueSolvabilite = ""
        def reponseSolvabilite = ""
        def score = solvabilite
        if(solvabilite < 30) {
            risqueSolvabilite = "FORT"
            reponseSolvabilite = "La société "+ entreprise.nom +" est endettée. Elle a des difficultés pour financer sa dette. Il convient de définir les actions à mettre en œuvre et de suivre l'évolution de la situation."
        }
        else {
            if(solvabilite < 50) {
                risqueSolvabilite = "MODERE"
                reponseSolvabilite = "La société "+ entreprise.nom +" semble avoir des difficultés pour financer sa dette. Il convient d'en déterminer les raisons (fort investissement, problème de rentabilité, difficulté particulière, etc.), et de surveiller l'évolution de la situation."
            }
            else {
                risqueSolvabilite = "FAIBLE"
                reponseSolvabilite= "La société "+ entreprise.nom +" n'a pas de difficultés pour financer sa dette."
            }
            
        }
        println(solvabilite)
       def reponse = new LinkedHashMap()
       reponse.put('risque' , risqueSolvabilite)
       reponse.put('explication' , reponseSolvabilite)
       reponse.put('mesure' , solvabilite)
       reponse.put('nom' , "Solvabilité")
       
        println("la reponse"+solvabilite)
       
       return reponse
    }
    
    
    def capaciteInteret (Entreprise entreprise) {
        def i =0
        def interet = 200
        entreprise.mesLiasses.each() { liasse ->
            i= i+1
            //on ne prend que les 3 derniers exercices.
            if(i<4) {
                def annee = liasse.annee
                println(liasse.ratio.garantieTaux)
                def indicateur = Float.parseFloat(liasse.ratio.garantieTaux)
                if( indicateur < interet) {
                        interet = indicateur
                }                
            }
            
        }
        def risqueInteret = ""
        def reponseInteret = ""
        
        if(interet < 2) {
            risqueInteret = "FORT"
            reponseInteret = "La société "+ entreprise.nom +" est endettée. Elle a des difficultés pour rembourser ses intérêts. Il convient de définir les actions à mettre en œuvre et de suivre l'évolution de la situation."
        }
        else {
            if(interet < 5) {
                risqueInteret = "MODERE"
                reponseInteret = "La société "+ entreprise.nom +" semble avoir des difficultés pour rembourser ses intérêts. Il convient d'en déterminer les raisons (fort investissement, problème de rentabilité, difficulté particulière, etc.), et de surveiller l'évolution de la situation."
            }
            else {
                risqueInteret = "FAIBLE"
                reponseInteret= "La société "+ entreprise.nom +" pour rembourser ses intérêts."
            }
            
        }
        println(interet)
       def reponse = new LinkedHashMap()
       reponse.put('risque' , risqueInteret)
       reponse.put('explication' , reponseInteret)
       reponse.put('mesure' , interet)
       reponse.put('nom' , "Poids des intérêts ")
       
       
       return reponse
    }
    
    
    
    def liquiditeGenerale(Entreprise entreprise) {
        def i =0
        def interet = 200
        entreprise.mesLiasses.each() { liasse ->
            i= i+1
            //on ne prend que les 3 derniers exercices.
            if(i<4) {
                def annee = liasse.annee
                println(liasse.ratio.liquidite)
                def indicateur = Float.parseFloat(liasse.ratio.liquidite)
                if( indicateur < interet) {
                        interet = indicateur
                }                
            }
            
        }
        def risqueInteret = ""
        def reponseInteret = ""
        
        if(interet < 1) {
            risqueInteret = "FORT"
            reponseInteret = "La société "+ entreprise.nom +" est endettée. Elle a des difficultés pour rembourser ses intérêts. Il convient de définir les actions à mettre en œuvre et de suivre l'évolution de la situation."
        }
        else {
            if(interet < 1.5) {
                risqueInteret = "MODERE"
                reponseInteret = "La société "+ entreprise.nom +" semble avoir des difficultés pour rembourser ses intérêts. Il convient d'en déterminer les raisons (fort investissement, problème de rentabilité, difficulté particulière, etc.), et de surveiller l'évolution de la situation."
            }
            else {
                risqueInteret = "FAIBLE"
                reponseInteret= "La société "+ entreprise.nom +" pour rembourser ses intérêts."
            }
            
        }
        println(interet)
       def reponse = new LinkedHashMap()
       reponse.put('risque' , risqueInteret)
       reponse.put('explication' , reponseInteret)
       reponse.put('mesure' , interet)
       reponse.put('nom' , "Liquidité générale ")
       
       
       return reponse
    }
    
    
    
    def evolutionCA(Entreprise entreprise) {
        def i =0
        def evolutionCA = 100
        def ca1
        def ca2
        entreprise.mesLiasses.each() { liasse ->
            i= i+1
            //on ne prend que les 3 derniers exercices.
            if(i<4) {
                if(i==1){ca2 = Float.parseFloat(liasse.cres.chiffreAffaires)}
                else{
                    def annee = liasse.annee
                    
                    ca1= Float.parseFloat(liasse.cres.chiffreAffaires)
                    def indicateur = Math.round((ca2-ca1)/ca1 * 10000)/100
                    if( indicateur <evolutionCA) {
                            evolutionCA = indicateur
                    }
                    ca2 = Float.parseFloat(liasse.cres.chiffreAffaires)
                }                
            }
            
        }
        def risqueEvolutionCA = ""
        def reponseEvolutionCA = ""
        def score = evolutionCA
        if(evolutionCA < -8) {
            risqueEvolutionCA = "FORT"
            reponseEvolutionCA = "La société "+ entreprise.nom +" a une évolution critique de son chiffre d'affaires. Il convient de définir les actions à mettre en œuvre et de suivre l'évolution de la situation."
        }
        else {
            if(evolutionCA < 0) {
                risqueEvolutionCA = "MODERE"
                reponseEvolutionCA = "La société "+ entreprise.nom +" semble connaître des difficultés à maintenir sa croissance. Il convient d'en déterminer les raisons (fort investissement, problème de rentabilité, difficulté particulière, etc.), et de surveiller l'évolution de la situation."
            }
            else {
                risqueEvolutionCA = "FAIBLE"
                reponseEvolutionCA= "La société "+ entreprise.nom +" ne connait pas de difficultés de croissance"
            }
            
        }
        println(evolutionCA)
       def reponse = new LinkedHashMap()
       reponse.put('risque' , risqueEvolutionCA)
       reponse.put('explication' , reponseEvolutionCA)
       reponse.put('mesure' , evolutionCA)
       reponse.put('nom' , "Evolution chiffre d'affaires")
       
        println("la reponse"+evolutionCA)
       
       return reponse
    }
    
    
    def margeOperationnelle(Entreprise entreprise) {
        def i =0
        def margeOperationnelle = 500
        entreprise.mesLiasses.each() { liasse ->
            i= i+1
            //on ne prend que les 3 derniers exercices.
            if(i<4) {
                def annee = liasse.annee
                    
                def ind1 = Float.parseFloat(liasse.cres.resultatExploitation)
                def ind2 = Float.parseFloat(liasse.cres.chiffreAffaires)
                def indicateur = Math.round(ind1/ind2 * 100)/100
                if( indicateur <margeOperationnelle) {
                        margeOperationnelle = indicateur
                }                              
            }
            
        }
        def risqueMargeOperationnelle = ""
        def reponseMargeOperationnelle = ""
        def score = margeOperationnelle
        if(margeOperationnelle < 5) {
            risqueMargeOperationnelle = "FORT"
            reponseMargeOperationnelle = "La société "+ entreprise.nom +" a des problèmes de rentabilité opérationnelle. Il convient de définir les actions à mettre en œuvre et de suivre l'évolution de la situation."
        }
        else {
            if(margeOperationnelle < 10) {
                risqueMargeOperationnelle = "MODERE"
                reponseMargeOperationnelle = "La rentabilité opérationnelle de la société "+ entreprise.nom +" est moyenne. Il serait nécessaire de suivre l'évolution"
            }
            else {
                risqueMargeOperationnelle = "FAIBLE"
                reponseMargeOperationnelle= "La société "+ entreprise.nom +" a une bonne rentabilité opérationnelle."
            }
            
        }
        println(margeOperationnelle)
       def reponse = new LinkedHashMap()
       reponse.put('risque' , risqueMargeOperationnelle)
       reponse.put('explication' , reponseMargeOperationnelle)
       reponse.put('mesure' , margeOperationnelle)
       reponse.put('nom' , "Marge opérationnelle")
       
        println("la reponse"+margeOperationnelle)
       
       return reponse
    }
    
    
    def rentabiliteNette(Entreprise entreprise) {
        def i =0
        def rentabiliteNette = 500
        entreprise.mesLiasses.each() { liasse ->
            i= i+1
            //on ne prend que les 3 derniers exercices.
            if(i<4) {
                def annee = liasse.annee
                    
                def ind1 = Float.parseFloat(liasse.cres.resultat)
                def ind2 = Float.parseFloat(liasse.cres.chiffreAffaires)
                def indicateur = Math.round(ind1/ind2 * 100)/100
                if( indicateur <rentabiliteNette) {
                        rentabiliteNette = indicateur
                }                              
            }
            
        }
        def risqueRentabiliteNette = ""
        def reponseRentabiliteNette = ""
        def score = rentabiliteNette
        if(rentabiliteNette < 5) {
            risqueRentabiliteNette = "FORT"
            reponseRentabiliteNette = "La société "+ entreprise.nom +" a des problèmes de rentabilité. Il convient de définir les actions à mettre en œuvre et de suivre l'évolution de la situation."
        }
        else {
            if(rentabiliteNette < 10) {
                risqueRentabiliteNette = "MODERE"
                reponseRentabiliteNette = "La rentabilité de la société "+ entreprise.nom +" est moyenne. Il serait nécessaire de suivre l'évolution"
            }
            else {
                risqueRentabiliteNette = "FAIBLE"
                reponseRentabiliteNette= "La société "+ entreprise.nom +" a une bonne rentabilité."
            }
            
        }
        println(rentabiliteNette)
       def reponse = new LinkedHashMap()
       reponse.put('risque' , risqueRentabiliteNette)
       reponse.put('explication' , reponseRentabiliteNette)
       reponse.put('mesure' , rentabiliteNette)
       reponse.put('nom' , "Rentabilité nette")
       
        println("la reponse"+rentabiliteNette)
       
       return reponse
    }
    
    
    
    
    def rendementCapitauxPropres(Entreprise entreprise) {
        def i =0
        def rendementCapitauxPropres = 500
        def annee = 2009
        entreprise.mesLiasses.each() { liasse ->
            i= i+1
            //on ne prend que les 3 derniers exercices.
            if(i<4) {
                
                    
                def indicateur = Math.round(Float.parseFloat(liasse.ratio.rendementCapitauxPropres) * 100)/100
                println(annee + " : " + liasse.ratio.rendementCapitauxPropres)
                if( indicateur <rendementCapitauxPropres) {
                        rendementCapitauxPropres = indicateur
                        annee = liasse.annee
                }                              
            }
            
        }
        def risqueRendementCapitauxPropres = ""
        def reponseRendementCapitauxPropres = ""
        def score = rendementCapitauxPropres
        if(rendementCapitauxPropres < 2) {
            risqueRendementCapitauxPropres = "FORT"
            reponseRendementCapitauxPropres = "La société "+ entreprise.nom +" offre un faible rendement à ses actionnaires. Il convient de définir les causes de cette situation"
        }
        else {
            if(rendementCapitauxPropres < 10) {
                risqueRendementCapitauxPropres = "MODERE"
                reponseRendementCapitauxPropres = "Le rendement de la société "+ entreprise.nom +" est correcte. Des actions d'amélioration devront être mises en place"
            }
            else {
                risqueRendementCapitauxPropres = "FAIBLE"
                reponseRendementCapitauxPropres= "La société "+ entreprise.nom +" offre un bon rendement : "+ rendementCapitauxPropres + "% en " + Math.round(annee)
            }
            
        }
        println(rendementCapitauxPropres)
       def reponse = new LinkedHashMap()
       reponse.put('risque' , risqueRendementCapitauxPropres)
       reponse.put('explication' , reponseRendementCapitauxPropres)
       reponse.put('mesure' , rendementCapitauxPropres)
       reponse.put('nom' , "Rendement des capitaux propres")
       
        println("la reponse"+rendementCapitauxPropres)
       
       return reponse
    }
    
    
    def rendementCapitalInvesti(Entreprise entreprise) {
        def i =0
        def rendementCapitalInvesti = 500
        entreprise.mesLiasses.each() { liasse ->
            i= i+1
            //on ne prend que les 3 derniers exercices.
            if(i<4) {
                def annee = liasse.annee
                    
                def indicateur = Math.round(Float.parseFloat(liasse.chiffresCles.rendementCapitalInvesti) * 100)/100
                println(annee + " : " + liasse.chiffresCles.rendementCapitalInvesti)
                if( indicateur <rendementCapitalInvesti) {
                        rendementCapitalInvesti = indicateur
                }                              
            }
            
        }
        def risqueRendementCapitalInvesti = ""
        def reponseRendementCapitalInvesti = ""
        def score = rendementCapitalInvesti
        if(rendementCapitalInvesti < 5) {
            risqueRendementCapitalInvesti = "FORT"
            reponseRendementCapitalInvesti = "La société "+ entreprise.nom +" offre un faible rendement à ses actionnaires. Il convient de définir les causes de cette situation"
        }
        else {
            if(rendementCapitalInvesti < 15) {
                risqueRendementCapitalInvesti = "MODERE"
                reponseRendementCapitalInvesti = "Le rendement de la société "+ entreprise.nom +" est correcte. Des actions d'amélioration devront être mises en place"
            }
            else {
                risqueRendementCapitalInvesti = "FAIBLE"
                reponseRendementCapitalInvesti= "La société "+ entreprise.nom +" offre un bon rendement."
            }
            
        }
        println(rendementCapitalInvesti)
       def reponse = new LinkedHashMap()
       reponse.put('risque' , risqueRendementCapitalInvesti)
       reponse.put('explication' , reponseRendementCapitalInvesti)
       reponse.put('mesure' , rendementCapitalInvesti)
       reponse.put('nom' , "rendementCapitalInvesti")
       
        println("la reponse"+rendementCapitalInvesti)
       
       return reponse
    }
    
    def liquiditeReduite(Entreprise entreprise) {
        def i =0
        def liquiditeReduite = 500
        entreprise.mesLiasses.each() { liasse ->
            i= i+1
            //on ne prend que les 3 derniers exercices.
            if(i<4) {
                def annee = liasse.annee
                    
                def indicateur = Math.round(Float.parseFloat(liasse.ratio.liquiditeReduite) * 100)/100
                println(annee + " : " + liasse.ratio.liquiditeReduite)
                if( indicateur <liquiditeReduite) {
                        liquiditeReduite = indicateur
                }                              
            }
            
        }
        def risqueLiquiditeReduite = ""
        def reponseLiquiditeReduite = ""
        def score = liquiditeReduite
        if(liquiditeReduite < 0.9) {
            risqueLiquiditeReduite = "FORT"
            reponseLiquiditeReduite = "La société "+ entreprise.nom +" offre un faible rendement à ses actionnaires. Il convient de définir les causes de cette situation"
        }
        else {
            if(liquiditeReduite < 1.1) {
                risqueLiquiditeReduite = "MODERE"
                reponseLiquiditeReduite = "Le rendement de la société "+ entreprise.nom +" est correcte. Des actions d'amélioration devront être mises en place"
            }
            else {
                risqueLiquiditeReduite = "FAIBLE"
                reponseLiquiditeReduite= "La société "+ entreprise.nom +" offre un bon rendement."
            }
            
        }
        println(liquiditeReduite)
       def reponse = new LinkedHashMap()
       reponse.put('risque' , risqueLiquiditeReduite)
       reponse.put('explication' , reponseLiquiditeReduite)
       reponse.put('mesure' , liquiditeReduite)
       reponse.put('nom' , "liquiditeReduite")
       
        println("la reponse"+liquiditeReduite)
       
       return reponse
    }
    
    def performance(Entreprise entreprise) {
        def i =0
        def performance = 500
        entreprise.mesLiasses.each() { liasse ->
            i= i+1
            //on ne prend que les 3 derniers exercices.
            if(i<4) {
                def annee = liasse.annee
                    
                def indicateur = Math.round(Float.parseFloat(liasse.chiffresCles.performance) * 100)/100
                println(annee + " : " + liasse.chiffresCles.performance)
                if( indicateur <performance) {
                        performance = indicateur
                }                              
            }
            
        }
        def risquePerformance = ""
        def reponsePerformance = ""
        def score = performance
        if(performance < 5) {
            risquePerformance = "FORT"
            reponsePerformance = "La société "+ entreprise.nom +" offre un faible rendement à ses actionnaires. Il convient de définir les causes de cette situation"
        }
        else {
            if(performance < 15) {
                risquePerformance = "MODERE"
                reponsePerformance = "Le rendement de la société "+ entreprise.nom +" est correcte. Des actions d'amélioration devront être mises en place"
            }
            else {
                risquePerformance = "FAIBLE"
                reponsePerformance= "La société "+ entreprise.nom +" offre un bon rendement."
            }
            
        }
        println(performance)
       def reponse = new LinkedHashMap()
       reponse.put('risque' , risquePerformance)
       reponse.put('explication' , reponsePerformance)
       reponse.put('mesure' , performance)
       reponse.put('nom' , "performance")
       
        println("la reponse"+performance)
       
       return reponse
    }
    
    def liquidite(Entreprise entreprise) {
        def i =0
        def liquidite = 500
        entreprise.mesLiasses.each() { liasse ->
            i= i+1
            //on ne prend que les 3 derniers exercices.
            if(i<4) {
                def annee = liasse.annee
                    
                def indicateur = Math.round(Float.parseFloat(liasse.ratio.liquidite) * 100)/100
                println(annee + " : " + liasse.ratio.liquidite)
                if( indicateur <liquidite) {
                        liquidite = indicateur
                }                              
            }
            
        }
        def risqueLiquidite = ""
        def reponseLiquidite = ""
        def score = liquidite
        if(liquidite < 5) {
            risqueLiquidite = "FORT"
            reponseLiquidite = "La société "+ entreprise.nom +" offre un faible rendement à ses actionnaires. Il convient de définir les causes de cette situation"
        }
        else {
            if(liquidite < 15) {
                risqueLiquidite = "MODERE"
                reponseLiquidite = "Le rendement de la société "+ entreprise.nom +" est correcte. Des actions d'amélioration devront être mises en place"
            }
            else {
                risqueLiquidite = "FAIBLE"
                reponseLiquidite= "La société "+ entreprise.nom +" offre un bon rendement."
            }
            
        }
        println(liquidite)
       def reponse = new LinkedHashMap()
       reponse.put('risque' , risqueLiquidite)
       reponse.put('explication' , reponseLiquidite)
       reponse.put('mesure' , liquidite)
       reponse.put('nom' , "liquidite")
       
        println("la reponse"+liquidite)
       
       return reponse
    }
    
    def creditClient(Entreprise entreprise) {
        def i =0
        def creditClient = 500
        entreprise.mesLiasses.each() { liasse ->
            i= i+1
            //on ne prend que les 3 derniers exercices.
            if(i<4) {
                def annee = liasse.annee
                    
                def indicateur = Math.round(Float.parseFloat(liasse.ratio.creditClient) * 100)/100
                if( indicateur <creditClient) {
                        creditClient = indicateur
                }                              
            }
            
        }
        def risqueCreditClient = ""
        def reponseCreditClient = ""
        def score = creditClient
        if(creditClient < 30) {
            risqueCreditClient = "FORT"
            reponseCreditClient = "La société "+ entreprise.nom +" offre un faible rendement à ses actionnaires. Il convient de définir les causes de cette situation"
        }
        else {
            if(creditClient < 45) {
                risqueCreditClient = "MODERE"
                reponseCreditClient = "Le rendement de la société "+ entreprise.nom +" est correcte. Des actions d'amélioration devront être mises en place"
            }
            else {
                risqueCreditClient = "FAIBLE"
                reponseCreditClient= "La société "+ entreprise.nom +" offre un bon rendement."
            }
            
        }
        println(creditClient)
       def reponse = new LinkedHashMap()
       reponse.put('risque' , risqueCreditClient)
       reponse.put('explication' , reponseCreditClient)
       reponse.put('mesure' , creditClient)
       reponse.put('nom' , "creditClient")
       
        println("la reponse"+creditClient)
       
       return reponse
    }
    
//    def performance(Entreprise entreprise) {
//        def i =0
//        def performance = 500
//        entreprise.mesLiasses.each() { liasse ->
//            i= i+1
//            //on ne prend que les 3 derniers exercices.
//            if(i<4) {
//                def annee = liasse.annee
//                    
//                def indicateur = Math.round(Float.parseFloat(liasse.chiffresCles.performance) * 100)/100
//                println(annee + " : " + liasse.chiffresCles.performance)
//                if( indicateur <performance) {
//                        performance = indicateur
//                }                              
//            }
//            
//        }
//        def risquePerformance = ""
//        def reponsePerformance = ""
//        def score = performance
//        if(performance < 5) {
//            risquePerformance = "FORT"
//            reponsePerformance = "La société "+ entreprise.nom +" offre un faible rendement à ses actionnaires. Il convient de définir les causes de cette situation"
//        }
//        else {
//            if(performance < 15) {
//                risquePerformance = "MODERE"
//                reponsePerformance = "Le rendement de la société "+ entreprise.nom +" est correcte. Des actions d'amélioration devront être mises en place"
//            }
//            else {
//                risquePerformance = "FAIBLE"
//                reponsePerformance= "La société "+ entreprise.nom +" offre un bon rendement."
//            }
//            
//        }
//        println(performance)
//       def reponse = new LinkedHashMap()
//       reponse.put('risque' , risquePerformance)
//       reponse.put('explication' , reponsePerformance)
//       reponse.put('mesure' , performance)
//       reponse.put('nom' , "performance")
//       
//        println("la reponse"+performance)
//       
//       return reponse
//    }
//    
//    def performance(Entreprise entreprise) {
//        def i =0
//        def performance = 500
//        entreprise.mesLiasses.each() { liasse ->
//            i= i+1
//            //on ne prend que les 3 derniers exercices.
//            if(i<4) {
//                def annee = liasse.annee
//                    
//                def indicateur = Math.round(Float.parseFloat(liasse.chiffresCles.performance) * 100)/100
//                println(annee + " : " + liasse.chiffresCles.performance)
//                if( indicateur <performance) {
//                        performance = indicateur
//                }                              
//            }
//            
//        }
//        def risquePerformance = ""
//        def reponsePerformance = ""
//        def score = performance
//        if(performance < 5) {
//            risquePerformance = "FORT"
//            reponsePerformance = "La société "+ entreprise.nom +" offre un faible rendement à ses actionnaires. Il convient de définir les causes de cette situation"
//        }
//        else {
//            if(performance < 15) {
//                risquePerformance = "MODERE"
//                reponsePerformance = "Le rendement de la société "+ entreprise.nom +" est correcte. Des actions d'amélioration devront être mises en place"
//            }
//            else {
//                risquePerformance = "FAIBLE"
//                reponsePerformance= "La société "+ entreprise.nom +" offre un bon rendement."
//            }
//            
//        }
//        println(performance)
//       def reponse = new LinkedHashMap()
//       reponse.put('risque' , risquePerformance)
//       reponse.put('explication' , reponsePerformance)
//       reponse.put('mesure' , performance)
//       reponse.put('nom' , "performance")
//       
//        println("la reponse"+performance)
//       
//       return reponse
//    }
//    
}
