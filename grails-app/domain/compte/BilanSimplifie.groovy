package compte

class BilanSimplifie {
   
 // Actif 
    // Float actifImmobilise = immobilisationsIncorporelles + immobilisationsCorporelles +
               //  autresActifsImmobilises
    
     Float immobilisationsIncorporelles
     Float immobilisationsCorporelles
     Float autresActifsImmobilises

     // Float actifCirculant = stock + creances + autresActifsCirculants // + valeursDisponibles 
     Float stock
     Float creances
     Float autresActifsCirculants
     Float valeursDisponibles // inclus dans autres actifs

     // Float actifTotal = actifCirculant + actifImmobilise

     // Passif
    //  Float capitauxPropres = capital + autresCapitauxPropres
     Float capital
     Float autresCapitauxPropres  

     //Float passifsNonCourants = dettesLongTerme + autresDettesLongTerme
     Float dettesLongTerme
     Float autresDettesLongTerme
     Float provisionsPourRisquesCharges

     //Float dettesCourtTerme = empruntsCT + fournisseurs + autresDCT
     Float empruntsCT
     Float fournisseurs
     Float autresDCT

     // Float passifTotal = dettesCourtTerme + passifsNonCourants + capitauxPropres 
    
    
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
