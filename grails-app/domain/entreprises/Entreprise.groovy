package entreprises

import compte.*

class Entreprise {

    String siren
    String nom
    // ClasseNaf classe
    
    
    static hasMany = [mesLiasses : Liasse, clients : Fournisseur, fournisseurs : Fournisseur]
    
    SortedSet mesLiasses
    
    static constraints = {
        // classe nullable : true
       mesLiasses nullable : true
       siren nullable : true
       clients nullable : true
       fournisseurs nullable : true
    }
    
    static mappedBy = [clients : 'fournisseur', fournisseurs : 'client']
}
