package contact

class Prospect {

    String message
    String mail
    Date dateInscription = new Date()    
    
    static constraints = {
        message nullable :true
        mail mail :true
    }
}
