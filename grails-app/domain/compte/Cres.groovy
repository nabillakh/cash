package compte

class Cres {

    Float chiffreAffaires
    Float chiffreAffairesNet

    Float coutVentes

    Float margeBrute

    Float autresChargesExploitations

    Float resultatExploitation

    Float produitsFinanciers
    Float chargesFinancieres
    Float resultatFinancier
    Float resultatCourantAvantImpot

    Float impotsTaxes

    Float resultatApresImpot

    Float produitsExceptionnels
    Float chargesExceptionnelles
    Float resultatExceptionnel

    Float resultat

    
 static constraints = {
    chiffreAffaires nullable : true
    chiffreAffairesNet nullable : true

    coutVentes nullable : true

    margeBrute nullable : true

    autresChargesExploitations nullable : true

    resultatExploitation nullable : true

    produitsFinanciers nullable : true
    chargesFinancieres nullable : true
    resultatFinancier nullable : true
    resultatCourantAvantImpot nullable : true

    impotsTaxes nullable : true

    resultatApresImpot nullable : true

    produitsExceptionnels nullable : true
    chargesExceptionnelles nullable : true
    resultatExceptionnel nullable : true

    resultat nullable : true

 }
}
