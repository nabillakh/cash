package contact

import entreprises.*

class Prospect {

    String message
    String mail
    Date dateInscription = new Date()    
    
    Entreprise entreprise
    
    static constraints = {
        message nullable :true
       // mail mail :true
        entreprise nullable : true
    }
}
