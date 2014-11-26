package compte



import grails.test.mixin.*
import spock.lang.*

@TestFor(BilanSimplifieController)
@Mock(BilanSimplifie)
class BilanSimplifieControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.bilanSimplifieInstanceList
            model.bilanSimplifieInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.bilanSimplifieInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            def bilanSimplifie = new BilanSimplifie()
            bilanSimplifie.validate()
            controller.save(bilanSimplifie)

        then:"The create view is rendered again with the correct model"
            model.bilanSimplifieInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            bilanSimplifie = new BilanSimplifie(params)

            controller.save(bilanSimplifie)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/bilanSimplifie/show/1'
            controller.flash.message != null
            BilanSimplifie.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def bilanSimplifie = new BilanSimplifie(params)
            controller.show(bilanSimplifie)

        then:"A model is populated containing the domain instance"
            model.bilanSimplifieInstance == bilanSimplifie
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def bilanSimplifie = new BilanSimplifie(params)
            controller.edit(bilanSimplifie)

        then:"A model is populated containing the domain instance"
            model.bilanSimplifieInstance == bilanSimplifie
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/bilanSimplifie/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def bilanSimplifie = new BilanSimplifie()
            bilanSimplifie.validate()
            controller.update(bilanSimplifie)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.bilanSimplifieInstance == bilanSimplifie

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            bilanSimplifie = new BilanSimplifie(params).save(flush: true)
            controller.update(bilanSimplifie)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/bilanSimplifie/show/$bilanSimplifie.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/bilanSimplifie/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def bilanSimplifie = new BilanSimplifie(params).save(flush: true)

        then:"It exists"
            BilanSimplifie.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(bilanSimplifie)

        then:"The instance is deleted"
            BilanSimplifie.count() == 0
            response.redirectedUrl == '/bilanSimplifie/index'
            flash.message != null
    }
}
