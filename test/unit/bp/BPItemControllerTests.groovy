package bp



import org.junit.*
import grails.test.mixin.*

@TestFor(BPItemController)
@Mock(BPItem)
class BPItemControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/BPItem/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.BPItemInstanceList.size() == 0
        assert model.BPItemInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.BPItemInstance != null
    }

    void testSave() {
        controller.save()

        assert model.BPItemInstance != null
        assert view == '/BPItem/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/BPItem/show/1'
        assert controller.flash.message != null
        assert BPItem.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/BPItem/list'


        populateValidParams(params)
        def BPItem = new BPItem(params)

        assert BPItem.save() != null

        params.id = BPItem.id

        def model = controller.show()

        assert model.BPItemInstance == BPItem
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/BPItem/list'


        populateValidParams(params)
        def BPItem = new BPItem(params)

        assert BPItem.save() != null

        params.id = BPItem.id

        def model = controller.edit()

        assert model.BPItemInstance == BPItem
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/BPItem/list'

        response.reset()


        populateValidParams(params)
        def BPItem = new BPItem(params)

        assert BPItem.save() != null

        // test invalid parameters in update
        params.id = BPItem.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/BPItem/edit"
        assert model.BPItemInstance != null

        BPItem.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/BPItem/show/$BPItem.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        BPItem.clearErrors()

        populateValidParams(params)
        params.id = BPItem.id
        params.version = -1
        controller.update()

        assert view == "/BPItem/edit"
        assert model.BPItemInstance != null
        assert model.BPItemInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/BPItem/list'

        response.reset()

        populateValidParams(params)
        def BPItem = new BPItem(params)

        assert BPItem.save() != null
        assert BPItem.count() == 1

        params.id = BPItem.id

        controller.delete()

        assert BPItem.count() == 0
        assert BPItem.get(BPItem.id) == null
        assert response.redirectedUrl == '/BPItem/list'
    }
}
