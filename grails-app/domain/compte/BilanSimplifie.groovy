package compte

class BilanSimplifie {
   
 // Actif 
    // String actifImmobilise = immobilisationsIncorporelles + immobilisationsCorporelles +
               //  autresActifsImmobilises
    
     String immobilisationsIncorporelles
     String immobilisationsCorporelles
     String autresActifsImmobilises

     // String actifCirculant = stock + creances + autresActifsCirculants // + valeursDisponibles 
     String stock
     String creances
     String autresActifsCirculants
     String valeursDisponibles // inclus dans autres actifs

     // String actifTotal = actifCirculant + actifImmobilise

     // Passif
    //  String capitauxPropres = capital + autresCapitauxPropres
     String capital
     String autresCapitauxPropres  

     //String passifsNonCourants = dettesLongTerme + autresDettesLongTerme
     String dettesLongTerme
     String autresDettesLongTerme
     String provisionsPourRisquesCharges

     //String dettesCourtTerme = empruntsCT + fournisseurs + autresDCT
     String empruntsCT
     String fournisseurs
     String autresDCT

     // String passifTotal = dettesCourtTerme + passifsNonCourants + capitauxPropres 
    
    
    static constraints = {
       // actifImmobilise nullable : true
        immobilisationsIncorporelles nullable : true
        immobilisationsCorporelles nullable : true
        autresActifsImmobilises nullable : true

        //actifCirculant nullable : true
        stock nullable : true
        creances nullable : true
        autresActifsCirculants nullable : true
        valeursDisponibles nullable : true

        //actifTotal nullable : true


        //capitauxPropres nullable : true
        capital nullable : true
        autresCapitauxPropres nullable : true

       // passifsNonCourants nullable : true
        dettesLongTerme nullable : true
        autresDettesLongTerme nullable : true
        provisionsPourRisquesCharges nullable : true

        //dettesCourtTerme nullable : true
        empruntsCT nullable : true
        fournisseurs nullable : true
        autresDCT nullable : true

        //passifTotal nullable : true

    }
}
