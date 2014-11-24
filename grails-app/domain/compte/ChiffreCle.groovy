package compte

class ChiffreCle {

    Float capaciteAutofinancement //    Capacité d’autofin. avant rép.

    Float liquiditeReduite //    Liquidité reduite (x)
    Float performance //    Performance (%)
    Float rendementCapitauxPropres //    Rend. des capitaux propres nets (%)
    Float rendementCapitalInvesti //    Rend. du capital investi (%)
    Float solvabilite //    Ratio de solvabilité (à partir de l'actif) (%)
    Float effectifs //    Effectifs

    
    
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
