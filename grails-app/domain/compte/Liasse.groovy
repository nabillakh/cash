package compte

import entreprises.*

class Liasse implements Comparable{

    Float annee
    Entreprise entreprise
    
    BilanSimplifie bilan
    ChiffreCle chiffresCles
    Ratios ratio
    Cres cres
    
    static constraints = {
        bilan nullable : true
        chiffresCles nullable : true
        ratio nullable : true
        cres nullable : true
        
    }
    
    
    int compareTo(obj) {
       obj.annee.compareTo(annee)
   }
}
