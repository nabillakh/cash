package compte

class Ratios {

    String rendementCapitauxPropres //    Rend. des capitaux propres nets (%)
    String rendementCapitalInvesti //    Rend. du capital investi (%)

    String retourSurActif //    Retour sur total de l'actif (%)
    String roce //    ROCE à partir du revenu net (%)

    String performance //    Performance (%)
    String margeCommercialeBrute //    Taux de marge commerciale brute (%)
    String ebitda //    Marge EBITDA (%)
    String ebit //    Marge EBIT (%)
    String cafSurCa //    Capacité d'autofinancement / Chiffre d'affaires (%)




    String caSurActif //    Chiffre d'affaires de l'actif net (x)
    String garantieTaux //    Garantie des taux (x)
    String rotationStock //    Rotation des stocks (x)
    String creditClient //    Crédit clients (J)
    String creditForunisseur //    Crédit fournisseurs (J)
    String chiffreAffairesExport //    CA à l'export / Produit d'exploitation (%)
    String depenseRDSurExploitation //    Dépenses de R&D / Produit d'exploitation (%)


    String liquiditeReduite //    Liquidité reduite (x)
    String liquidite //    Ratio de liquidité (x)
    String liquiditeActionnaires //    Ratio de liquidité des actionnaires (x)
    String solvabiliteSurActif //    Ratio de solvabilité (à partir de l'actif) (%)
    String solvabiliteSurPassif //    Ratio de solvabilité (à partir du passif) (%)
    String coefficientEndettement //    Coefficient d'endettement (%)


    String resultatParEffectif //    Bénéfice par employé (th USD)
    String caParEmploye //    Chiffre d'affaires par employé (mil) (th USD)
    String masseSalarialeSurCA //    Masse salariale / Produit d'exploitation (%)
    String etp //    Moyenne de la masse salariale (K) (th USD)
    String capitalParEmploye //    Capitaux propres par employés (K) (th USD)



    
    static constraints = {
        
        rendementCapitauxPropres nullable : true
        rendementCapitalInvesti nullable : true

        retourSurActif nullable : true
        roce nullable : true

        performance nullable : true
        margeCommercialeBrute nullable : true
        ebitda nullable : true
        ebit nullable : true
        cafSurCa nullable : true




        caSurActif nullable : true
        garantieTaux nullable : true
        rotationStock nullable : true
        creditClient nullable : true
        creditForunisseur nullable : true
        chiffreAffairesExport nullable : true
        depenseRDSurExploitation nullable : true


        liquiditeReduite nullable : true
        liquidite nullable : true
        liquiditeActionnaires nullable : true
        solvabiliteSurActif nullable : true
        solvabiliteSurPassif nullable : true
        coefficientEndettement nullable : true


        resultatParEffectif nullable : true
        caParEmploye nullable : true
        masseSalarialeSurCA nullable : true
        etp nullable : true
        capitalParEmploye nullable : true


    }
}
