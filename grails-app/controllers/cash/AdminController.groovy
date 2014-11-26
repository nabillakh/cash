package cash

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import org.apache.poi.ss.usermodel.Sheet; 
import org.apache.poi.ss.usermodel.Workbook; 
import org.apache.poi.ss.usermodel.WorkbookFactory; 
import sample.*
import org.grails.plugins.excelimport.*
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.codehaus.groovy.grails.web.json.JSONObject
import grails.converters.JSON

import entreprises.*
import compte.*

class AdminController {
    
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    
    def static cellReporter = new DefaultImportCellCollector()
    def excelImportService

    def index() { 
        println("a voir")
    }
    
    def save() {
        
        println("dans save")
        def entreprise = new Entreprise (nom : "cas lambourg", siren : "1254687").save()
        def annee = 2013
        
        // import excel
        Map CONFIG_BVDINFO_COLUMN_MAP = [
          sheet:'Page 1', 
          startRow: 90,
          columnMap:  [
              'DQ':'numero',
                  'DU':'nom',
                  'AG':'n',
                  'AQ':'n1',
                  'BD':'n2',
                  'BP':'n3',
                  'CG':'n4',
            ]
        ]
        Map CONFIG_BVDINFO2_COLUMN_MAP = [
          sheet:'Page 1', 
          startRow: 150,
          columnMap:  [
              'DQ':'numero',
                  'DU':'nom',
                  'AG':'n',
                  'AQ':'n1',
                  'BD':'n2',
                  'BP':'n3',
                  'CG':'n4',
            ]
        ]
        Map CONFIG_BVDINFO3_COLUMN_MAP = [
          sheet:'Page 1', 
          startRow: 210,
          columnMap:  [
              'DQ':'numero',
                  'DU':'nom',
                  'AG':'n',
                  'AQ':'n1',
                  'BD':'n2',
                  'BP':'n3',
                  'CG':'n4',
            ]
        ]
        Map CONFIG_BVDINFO4_COLUMN_MAP = [
          sheet:'Page 1', 
          startRow: 270,
          columnMap:  [
              'DQ':'numero',
                  'DU':'nom',
                  'AG':'n',
                  'AQ':'n1',
                  'BD':'n2',
                  'BP':'n3',
                  'CG':'n4',
            ]
        ]
        Map CONFIG_BVDINFO5_COLUMN_MAP = [
          sheet:'Page 1', 
          startRow: 330,
          columnMap:  [
              'DQ':'numero',
                  'DU':'nom',
                  'AG':'n',
                  'AQ':'n1',
                  'BD':'n2',
                  'BP':'n3',
                  'CG':'n4',
            ]
        ]
        
        MultipartHttpServletRequest mpr = (MultipartHttpServletRequest)request;
        CommonsMultipartFile file = (CommonsMultipartFile) mpr.getFile("file");
         Workbook workbook = WorkbookFactory.create(file.inputStream)


         List data = excelImportService.columns(workbook, CONFIG_BVDINFO_COLUMN_MAP)
         List data2 = (excelImportService.columns(workbook, CONFIG_BVDINFO2_COLUMN_MAP))
         List data3 = (excelImportService.columns(workbook, CONFIG_BVDINFO3_COLUMN_MAP))
         List data4 = (excelImportService.columns(workbook, CONFIG_BVDINFO4_COLUMN_MAP))
         List data5 = (excelImportService.columns(workbook, CONFIG_BVDINFO5_COLUMN_MAP))
         
         println(data)
         println(data2)
         println(data3)
         println(data4)
         println(data5)
         def dataN = new LinkedHashMap()
         def dataN1 = new LinkedHashMap()
         def dataN2 = new LinkedHashMap()
         def dataN3 = new LinkedHashMap()
         def dataN4 = new LinkedHashMap()
        
        data.each() {map ->             
             if(!map.nom) {map.nom = ""}
             if(!map.n1) {map.n1 = 0}
             if(!map.n2) {map.n2 = 0}
             if(!map.n3) {map.n3 = 0}
             if(!map.n4) {map.n4 = 0}
             
             dataN.put(map.nom, map.n)
             dataN1.put(map.nom, map.n1)
             dataN2.put(map.nom, map.n2)
             dataN3.put(map.nom, map.n3)
             dataN4.put(map.nom, map.n4)
         }
        data2.each() {map ->             
             if(!map.nom) {map.nom = ""}
             if(!map.n1) {map.n1 = 0}
             if(!map.n2) {map.n2 = 0}
             if(!map.n3) {map.n3 = 0}
             if(!map.n4) {map.n4 = 0}
             
             dataN.put(map.nom, map.n)
             dataN1.put(map.nom, map.n1)
             dataN2.put(map.nom, map.n2)
             dataN3.put(map.nom, map.n3)
             dataN4.put(map.nom, map.n4)
         }
         
        data3.each() {map ->             
             if(!map.nom) {map.nom = ""}
             if(!map.n1) {map.n1 = 0}
             if(!map.n2) {map.n2 = 0}
             if(!map.n3) {map.n3 = 0}
             if(!map.n4) {map.n4 = 0}
             
             dataN.put(map.nom, map.n)
             dataN1.put(map.nom, map.n1)
             dataN2.put(map.nom, map.n2)
             dataN3.put(map.nom, map.n3)
             dataN4.put(map.nom, map.n4)
         }
         
        data4.each() {map ->             
             if(!map.nom) {map.nom = ""}
             if(!map.n1) {map.n1 = 0}
             if(!map.n2) {map.n2 = 0}
             if(!map.n3) {map.n3 = 0}
             if(!map.n4) {map.n4 = 0}
             
             dataN.put(map.nom, map.n)
             dataN1.put(map.nom, map.n1)
             dataN2.put(map.nom, map.n2)
             dataN3.put(map.nom, map.n3)
             dataN4.put(map.nom, map.n4)
         }
         
        data5.each() {map ->             
             if(!map.nom) {map.nom = ""}
             if(!map.n1) {map.n1 = 0} 
             if(!map.n2) {map.n2 = 0}
             if(!map.n3) {map.n3 = 0}
             if(!map.n4) {map.n4 = 0}
             
             dataN.put(map.nom, map.n)
             dataN1.put(map.nom, map.n1)
             dataN2.put(map.nom, map.n2)
             dataN3.put(map.nom, map.n3)
             dataN4.put(map.nom, map.n4)
         }
         
        def liasseN = new Liasse(annee : annee, entreprise : entreprise)
        println("taille : " + dataN.size())
        def bilanSimplifieN = new BilanSimplifie()        
        bindData(bilanSimplifieN, dataN)
        def chiffreCleN = new ChiffreCle()
        bindData(chiffreCleN, dataN)
        def cResN = new Cres()
        bindData(cResN, dataN)
        def ratioN = new Ratios()
        bindData(ratioN, dataN)
        println(ratioN.rendementCapitauxPropres)
        
        bilanSimplifieN.save()
        println(bilanSimplifieN)
        println(bilanSimplifieN.immobilisationsIncorporelles)
        liasseN.bilan = bilanSimplifieN
        
        chiffreCleN.save(failOnError: true)
        println(chiffreCleN)
        println(chiffreCleN.capaciteAutofinancement)
        liasseN.chiffresCles = chiffreCleN
        
        cResN.save(failOnError: true)
        println(cResN)
        println(cResN.chiffreAffaires)
        liasseN.cres = cResN
        
        ratioN.save(failOnError: true)
        println(ratioN)
        println(ratioN.rendementCapitauxPropres)
        liasseN.ratio = ratioN
        
        liasseN.save()   
        
        
        def liasseN1 = new Liasse(annee : annee-1, entreprise : entreprise)
        println("taille : " + dataN1.size())
        def bilanSimplifieN1 = new BilanSimplifie()        
        bindData(bilanSimplifieN1, dataN1)
        def chiffreCleN1 = new ChiffreCle()
        bindData(chiffreCleN1, dataN1)
        def cResN1 = new Cres()
        bindData(cResN1, dataN1)
        def ratioN1 = new Ratios()
        bindData(ratioN1, dataN1)
        println(ratioN1.rendementCapitauxPropres)
        
        bilanSimplifieN1.save()
        println(bilanSimplifieN1)
        println(bilanSimplifieN1.immobilisationsIncorporelles)
        liasseN1.bilan = bilanSimplifieN1
        
        chiffreCleN1.save(failOnError: true)
        println(chiffreCleN1)
        println(chiffreCleN1.capaciteAutofinancement)
        liasseN1.chiffresCles = chiffreCleN1
        
        cResN1.save(failOnError: true)
        println(cResN1)
        println(cResN1.chiffreAffaires)
        liasseN1.cres = cResN1
        
        ratioN1.save(failOnError: true)
        println(ratioN1)
        println(ratioN1.rendementCapitauxPropres)
        liasseN1.ratio = ratioN1
        
        liasseN1.save()   
        
        
        def liasseN2 = new Liasse(annee : annee-2, entreprise : entreprise)
        println("taille : " + dataN2.size())
        def bilanSimplifieN2 = new BilanSimplifie()        
        bindData(bilanSimplifieN2, dataN2)
        def chiffreCleN2 = new ChiffreCle()
        bindData(chiffreCleN2, dataN2)
        def cResN2 = new Cres()
        bindData(cResN2, dataN2)
        def ratioN2 = new Ratios()
        bindData(ratioN2, dataN2)
        println(ratioN2.rendementCapitauxPropres)
        
        bilanSimplifieN2.save()
        println(bilanSimplifieN2)
        println(bilanSimplifieN2.immobilisationsIncorporelles)
        liasseN2.bilan = bilanSimplifieN2
        
        chiffreCleN2.save(failOnError: true)
        println(chiffreCleN2)
        println(chiffreCleN2.capaciteAutofinancement)
        liasseN2.chiffresCles = chiffreCleN2
        
        cResN2.save(failOnError: true)
        println(cResN2)
        println(cResN2.chiffreAffaires)
        liasseN2.cres = cResN2
        
        ratioN2.save(failOnError: true)
        println(ratioN2)
        println(ratioN2.rendementCapitauxPropres)
        liasseN2.ratio = ratioN2
        
        liasseN2.save()   
        
        
        
        def liasseN3 = new Liasse(annee : annee-3, entreprise : entreprise)
        println("taille : " + dataN3.size())
        def bilanSimplifieN3 = new BilanSimplifie()        
        bindData(bilanSimplifieN3, dataN3)
        def chiffreCleN3 = new ChiffreCle()
        bindData(chiffreCleN3, dataN3)
        def cResN3 = new Cres()
        bindData(cResN3, dataN3)
        def ratioN3 = new Ratios()
        bindData(ratioN3, dataN3)
        println(ratioN3.rendementCapitauxPropres)
        
        bilanSimplifieN3.save()
        println(bilanSimplifieN3)
        println(bilanSimplifieN3.immobilisationsIncorporelles)
        liasseN3.bilan = bilanSimplifieN3
        
        chiffreCleN3.save(failOnError: true)
        println(chiffreCleN3)
        println(chiffreCleN3.capaciteAutofinancement)
        liasseN3.chiffresCles = chiffreCleN3
        
        cResN3.save(failOnError: true)
        println(cResN3)
        println(cResN3.chiffreAffaires)
        liasseN3.cres = cResN3
        
        ratioN3.save(failOnError: true)
        println(ratioN3)
        println(ratioN3.rendementCapitauxPropres)
        liasseN3.ratio = ratioN3
        
        liasseN3.save()   
        
        
        
        
        def liasseN4 = new Liasse(annee : annee-4, entreprise : entreprise)
        println("taille : " + dataN4.size())
        def bilanSimplifieN4 = new BilanSimplifie()        
        bindData(bilanSimplifieN4, dataN4)
        def chiffreCleN4 = new ChiffreCle()
        bindData(chiffreCleN4, dataN4)
        def cResN4 = new Cres()
        bindData(cResN4, dataN4)
        def ratioN4 = new Ratios()
        bindData(ratioN4, dataN4)
        println(ratioN4.rendementCapitauxPropres)
        
        bilanSimplifieN4.save()
        println(bilanSimplifieN4)
        println(bilanSimplifieN4.immobilisationsIncorporelles)
        liasseN4.bilan = bilanSimplifieN4
        
        chiffreCleN4.save(failOnError: true)
        println(chiffreCleN4)
        println(chiffreCleN4.capaciteAutofinancement)
        liasseN4.chiffresCles = chiffreCleN4
        
        cResN4.save(failOnError: true)
        println(cResN4)
        println(cResN4.chiffreAffaires)
        liasseN4.cres = cResN4
        
        ratioN4.save(failOnError: true)
        println(ratioN4)
        println(ratioN4.rendementCapitauxPropres)
        liasseN4.ratio = ratioN4
        
        liasseN4.save()   
        
        entreprise.addToMesLiasses(liasseN)
        entreprise.addToMesLiasses(liasseN1)
        entreprise.addToMesLiasses(liasseN2)
        entreprise.addToMesLiasses(liasseN3)
        entreprise.addToMesLiasses(liasseN4)
        
        entreprise.save()        
        
        
     } 
}
