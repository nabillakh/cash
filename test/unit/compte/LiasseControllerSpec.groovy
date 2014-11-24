package compte



import grails.test.mixin.*
import spock.lang.*

@TestFor(LiasseController)
@Mock(Liasse)
class LiasseControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.liasseInstanceList
            model.liasseInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.liasseInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            def liasse = new Liasse()
            liasse.validate()
            controller.save(liasse)

        then:"The create view is rendered again with the correct model"
            model.liasseInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            liasse = new Liasse(params)

            controller.save(liasse)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/liasse/show/1'
            controller.flash.message != null
            Liasse.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def liasse = new Liasse(params)
            controller.show(liasse)

        then:"A model is populated containing the domain instance"
            model.liasseInstance == liasse
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def liasse = new Liasse(params)
            controller.edit(liasse)

        then:"A model is populated containing the domain instance"
            model.liasseInstance == liasse
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/liasse/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def liasse = new Liasse()
            liasse.validate()
            controller.update(liasse)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.liasseInstance == liasse

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            liasse = new Liasse(params).save(flush: true)
            controller.update(liasse)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/liasse/show/$liasse.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/liasse/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def liasse = new Liasse(params).save(flush: true)

        then:"It exists"
            Liasse.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(liasse)

        then:"The instance is deleted"
            Liasse.count() == 0
            response.redirectedUrl == '/liasse/index'
            flash.message != null
    }
}
