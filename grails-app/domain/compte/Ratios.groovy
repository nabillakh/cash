package compte

class Ratios {

    Float rendementCapitauxPropres //    Rend. des capitaux propres nets (%)
    Float rendementCapitalInvesti //    Rend. du capital investi (%)

    Float retourSurActif //    Retour sur total de l'actif (%)
    Float roce //    ROCE à partir du revenu net (%)

    Float performance //    Performance (%)
    Float margeCommercialeBrute //    Taux de marge commerciale brute (%)
    Float ebitda //    Marge EBITDA (%)
    Float ebit //    Marge EBIT (%)
    Float cafSurCa //    Capacité d'autofinancement / Chiffre d'affaires (%)




    Float caSurActif //    Chiffre d'affaires de l'actif net (x)
    Float garantieTaux //    Garantie des taux (x)
    Float rotationStock //    Rotation des stocks (x)
    Float creditClient //    Crédit clients (J)
    Float creditForunisseur //    Crédit fournisseurs (J)
    Float chiffreAffairesExport //    CA à l'export / Produit d'exploitation (%)
    Float depenseRDSurExploitation //    Dépenses de R&D / Produit d'exploitation (%)


    Float liquiditeReduite //    Liquidité reduite (x)
    Float liquidite //    Ratio de liquidité (x)
    Float liquiditeActionnaires //    Ratio de liquidité des actionnaires (x)
    Float solvabiliteSurActif //    Ratio de solvabilité (à partir de l'actif) (%)
    Float solvabiliteSurPassif //    Ratio de solvabilité (à partir du passif) (%)
    Float coefficientEndettement //    Coefficient d'endettement (%)


    Float resultatParEffectif //    Bénéfice par employé (th USD)
    Float caParEmploye //    Chiffre d'affaires par employé (mil) (th USD)
    Float masseSalarialeSurCA //    Masse salariale / Produit d'exploitation (%)
    Float etp //    Moyenne de la masse salariale (K) (th USD)
    Float capitalParEmploye //    Capitaux propres par employés (K) (th USD)



    
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
