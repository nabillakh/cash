package referentiel



import grails.test.mixin.*
import spock.lang.*

@TestFor(FormuleIndicateurController)
@Mock(FormuleIndicateur)
class FormuleIndicateurControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.formuleIndicateurInstanceList
            model.formuleIndicateurInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.formuleIndicateurInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            def formuleIndicateur = new FormuleIndicateur()
            formuleIndicateur.validate()
            controller.save(formuleIndicateur)

        then:"The create view is rendered again with the correct model"
            model.formuleIndicateurInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            formuleIndicateur = new FormuleIndicateur(params)

            controller.save(formuleIndicateur)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/formuleIndicateur/show/1'
            controller.flash.message != null
            FormuleIndicateur.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def formuleIndicateur = new FormuleIndicateur(params)
            controller.show(formuleIndicateur)

        then:"A model is populated containing the domain instance"
            model.formuleIndicateurInstance == formuleIndicateur
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def formuleIndicateur = new FormuleIndicateur(params)
            controller.edit(formuleIndicateur)

        then:"A model is populated containing the domain instance"
            model.formuleIndicateurInstance == formuleIndicateur
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/formuleIndicateur/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def formuleIndicateur = new FormuleIndicateur()
            formuleIndicateur.validate()
            controller.update(formuleIndicateur)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.formuleIndicateurInstance == formuleIndicateur

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            formuleIndicateur = new FormuleIndicateur(params).save(flush: true)
            controller.update(formuleIndicateur)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/formuleIndicateur/show/$formuleIndicateur.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/formuleIndicateur/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def formuleIndicateur = new FormuleIndicateur(params).save(flush: true)

        then:"It exists"
            FormuleIndicateur.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(formuleIndicateur)

        then:"The instance is deleted"
            FormuleIndicateur.count() == 0
            response.redirectedUrl == '/formuleIndicateur/index'
            flash.message != null
    }
}
