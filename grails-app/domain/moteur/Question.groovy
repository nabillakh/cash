package moteur

class Question {
    
    Question parent;

    String question;
    String formule;
     
    Entite entitePrincipale
    Entite entiteSecondaire
    
     Entite ouiFinal;
     Entite nonFinal;
     
     Question ouiQuestion;
     Question nonQuestion;
     
     int nbJoue;
    
    static constraints = {
        parent nullable : true
        question nullable : true
        formule nullable : true
        entitePrincipale nullable : true
        entiteSecondaire nullable : true
        ouiFinal nullable : true
         nonFinal nullable : true
        ouiQuestion nullable : true
        nonQuestion nullable : true
        nbJoue nullable : true
        
    }
}
