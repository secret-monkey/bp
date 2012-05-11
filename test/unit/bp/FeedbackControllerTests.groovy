package bp



import org.junit.*
import grails.test.mixin.*

@TestFor(FeedbackController)
@Mock(Feedback)
class FeedbackControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/BPFeedback/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.BPFeedbackInstanceList.size() == 0
        assert model.BPFeedbackInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.BPFeedbackInstance != null
    }

    void testSave() {
        controller.save()

        assert model.BPFeedbackInstance != null
        assert view == '/BPFeedback/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/BPFeedback/show/1'
        assert controller.flash.message != null
        assert Feedback.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/BPFeedback/list'


        populateValidParams(params)
        def BPFeedback = new Feedback(params)

        assert BPFeedback.save() != null

        params.id = BPFeedback.id

        def model = controller.show()

        assert model.BPFeedbackInstance == BPFeedback
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/BPFeedback/list'


        populateValidParams(params)
        def BPFeedback = new Feedback(params)

        assert BPFeedback.save() != null

        params.id = BPFeedback.id

        def model = controller.edit()

        assert model.BPFeedbackInstance == BPFeedback
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/BPFeedback/list'

        response.reset()


        populateValidParams(params)
        def BPFeedback = new Feedback(params)

        assert BPFeedback.save() != null

        // test invalid parameters in update
        params.id = BPFeedback.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/BPFeedback/edit"
        assert model.BPFeedbackInstance != null

        BPFeedback.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/BPFeedback/show/$BPFeedback.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        BPFeedback.clearErrors()

        populateValidParams(params)
        params.id = BPFeedback.id
        params.version = -1
        controller.update()

        assert view == "/BPFeedback/edit"
        assert model.BPFeedbackInstance != null
        assert model.BPFeedbackInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/BPFeedback/list'

        response.reset()

        populateValidParams(params)
        def BPFeedback = new Feedback(params)

        assert BPFeedback.save() != null
        assert BPFeedback.count() == 1

        params.id = BPFeedback.id

        controller.delete()

        assert BPFeedback.count() == 0
        assert BPFeedback.get(BPFeedback.id) == null
        assert response.redirectedUrl == '/BPFeedback/list'
    }
}
