package referentiel

class Indicateur implements Comparable {

    Float numero
    String nom
    String code
    String definition
    
    
    static constraints = {
    }
    
    
    int compareTo(obj) {
       numero.compareTo(obj.numero)
   }
}
