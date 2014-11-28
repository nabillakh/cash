package cash

import grails.transaction.Transactional
import compte.*

@Transactional
class AnalyseFinanciereService {

    def fondDeRoulement(Liasse liasse) {
        return Math.round((fondsPropres(liasse) + dettesLMT(liasse) - immobilisations(liasse)) /1000)
    }
    
    def bFR(Liasse liasse) {
        return Math.round((stock(liasse) + creances(liasse) + autresActifsCirculants(liasse) - fournisseurs(liasse) - autresDCT(liasse))/1000)
        
    }
    
    def tresorerieNette(Liasse liasse) {
        return fondDeRoulement(liasse) - bFR(liasse)
    }
    
    def immobilisations(Liasse liasse) {
        return Float.parseFloat(liasse.bilan.immobilisationsIncorporelles) +
                            Float.parseFloat(liasse.bilan.immobilisationsCorporelles) +
                            Float.parseFloat(liasse.bilan.autresActifsImmobilises )
    }
    def fondsPropres(Liasse liasse) {
        return Float.parseFloat(liasse.bilan.capital) +
                            Float.parseFloat(liasse.bilan.autresCapitauxPropres)
    }
    def dettesLMT(Liasse liasse) {
        return Float.parseFloat(liasse.bilan.dettesLongTerme )+
                            Float.parseFloat(liasse.bilan.autresDettesLongTerme  ) 
    }
    def stock(Liasse liasse) {
        Float.parseFloat(liasse.bilan.stock)
        }
        
            
            def creances(Liasse liasse)   {
        Float.parseFloat(liasse.bilan.creances)}
            def autresActifsCirculants(Liasse liasse)   {Float.parseFloat(liasse.bilan.autresActifsCirculants)}
            def fournisseurs(Liasse liasse)  {Float.parseFloat(liasse.bilan.fournisseurs)}
            def autresDCT(Liasse liasse)  {Float.parseFloat(liasse.bilan.autresDCT)}
            
    
    def creditCourtTerme(Liasse liasse) {
        Float.parseFloat(liasse.bilan.empruntsCT)
    }

}
