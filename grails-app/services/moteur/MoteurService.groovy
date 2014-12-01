package moteur

import grails.transaction.Transactional
import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.Invocable;


import entreprises.*
import moteur.*

@Transactional
class MoteurService {

    def initialisation() {
        def entreprise = Entreprise.get(1)        
        def liasse = entreprise.mesLiasses.getAt(0)
        def liasse2 = entreprise.mesLiasses.getAt(1)
        // faire des filtres via un service
        def faits = Fait.liste()
        
        def entites = Entite.liste()
        def i = 0
        entites.each() {entite ->
            def fait = new Fait()
            fait.entite = entite
            fait.liasse = liasse
            fait.liasse2 = liasse2
            
            entite.nbJoues = entite.nbJoues + 1
                        
            ScriptEngineManager factory = new ScriptEngineManager();
            ScriptEngine engine = factory.getEngineByName("groovy");
            String fact = entite.questionPere.formule // "def factorial(n) { n == 1 ? 1 : n * factorial(n - 1) }";
            engine.eval(fact);
            Invocable inv = (Invocable) engine;
            Object[] params = { new Integer(5) };
            Object result = inv.invokeFunction("factorial", params);
            println(result);
        }
        

    }
}
