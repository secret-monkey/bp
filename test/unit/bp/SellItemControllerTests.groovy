package bp



import org.junit.*
import grails.test.mixin.*

@TestFor(SellItemController)
@Mock(SellItem)
class SellItemControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/sellItem/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.sellItemInstanceList.size() == 0
        assert model.sellItemInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.sellItemInstance != null
    }

    void testSave() {
        controller.save()

        assert model.sellItemInstance != null
        assert view == '/sellItem/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/sellItem/show/1'
        assert controller.flash.message != null
        assert SellItem.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/sellItem/list'


        populateValidParams(params)
        def sellItem = new SellItem(params)

        assert sellItem.save() != null

        params.id = sellItem.id

        def model = controller.show()

        assert model.sellItemInstance == sellItem
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/sellItem/list'


        populateValidParams(params)
        def sellItem = new SellItem(params)

        assert sellItem.save() != null

        params.id = sellItem.id

        def model = controller.edit()

        assert model.sellItemInstance == sellItem
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/sellItem/list'

        response.reset()


        populateValidParams(params)
        def sellItem = new SellItem(params)

        assert sellItem.save() != null

        // test invalid parameters in update
        params.id = sellItem.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/sellItem/edit"
        assert model.sellItemInstance != null

        sellItem.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/sellItem/show/$sellItem.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        sellItem.clearErrors()

        populateValidParams(params)
        params.id = sellItem.id
        params.version = -1
        controller.update()

        assert view == "/sellItem/edit"
        assert model.sellItemInstance != null
        assert model.sellItemInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/sellItem/list'

        response.reset()

        populateValidParams(params)
        def sellItem = new SellItem(params)

        assert sellItem.save() != null
        assert SellItem.count() == 1

        params.id = sellItem.id

        controller.delete()

        assert SellItem.count() == 0
        assert SellItem.get(sellItem.id) == null
        assert response.redirectedUrl == '/sellItem/list'
    }
}
