package moteur

import entreprises.*
import compte.*

class Fait {
    
    Liasse liasse
    Liasse liasse2
    
    Fait faitPrincipal
    Fait faitSecondaire
        
    Question questionSuperieure
    
    Entite entite
    
    // Valeur valeur
    
    
    static constraints = {
        liasse  nullable : true
        liasse2  nullable : true
        faitPrincipal  nullable : true
        faitSecondaire  nullable : true
        questionSuperieure  nullable : true
        entite  nullable : true
        // valeur  nullable : true
    }
}
