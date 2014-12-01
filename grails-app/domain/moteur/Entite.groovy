package moteur

class Entite {
    
    String nom;
    
    Question questionPere
    
    int nbJoues;
    int nbTrouves;
     
    static constraints = {
        nom nullable : true
        questionPere nullable : true
    }
    def Entite() {
        this.nbJoues = 0
        this.nbTrouves = 0
    }
} 
