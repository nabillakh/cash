package compte

class ChiffreCle {

    String capaciteAutofinancement //    Capacité d’autofin. avant rép.

    String liquiditeReduite //    Liquidité reduite (x)
    String performance //    Performance (%)
    String rendementCapitauxPropres //    Rend. des capitaux propres nets (%)
    String rendementCapitalInvesti //    Rend. du capital investi (%)
    String solvabilite //    Ratio de solvabilité (à partir de l'actif) (%)
    String effectifs //    Effectifs

    
    
    static constraints = {
        capaciteAutofinancement nullable : true
        liquiditeReduite nullable : true
        performance nullable : true
        rendementCapitauxPropres nullable : true
        rendementCapitalInvesti nullable : true
        solvabilite nullable : true
        effectifs nullable : true

    }
}
