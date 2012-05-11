package bp



import org.junit.*
import grails.test.mixin.*

@TestFor(BuyItemController)
@Mock(BuyItem)
class BuyItemControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/buyItem/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.buyItemInstanceList.size() == 0
        assert model.buyItemInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.buyItemInstance != null
    }

    void testSave() {
        controller.save()

        assert model.buyItemInstance != null
        assert view == '/buyItem/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/buyItem/show/1'
        assert controller.flash.message != null
        assert BuyItem.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/buyItem/list'


        populateValidParams(params)
        def buyItem = new BuyItem(params)

        assert buyItem.save() != null

        params.id = buyItem.id

        def model = controller.show()

        assert model.buyItemInstance == buyItem
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/buyItem/list'


        populateValidParams(params)
        def buyItem = new BuyItem(params)

        assert buyItem.save() != null

        params.id = buyItem.id

        def model = controller.edit()

        assert model.buyItemInstance == buyItem
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/buyItem/list'

        response.reset()


        populateValidParams(params)
        def buyItem = new BuyItem(params)

        assert buyItem.save() != null

        // test invalid parameters in update
        params.id = buyItem.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/buyItem/edit"
        assert model.buyItemInstance != null

        buyItem.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/buyItem/show/$buyItem.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        buyItem.clearErrors()

        populateValidParams(params)
        params.id = buyItem.id
        params.version = -1
        controller.update()

        assert view == "/buyItem/edit"
        assert model.buyItemInstance != null
        assert model.buyItemInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/buyItem/list'

        response.reset()

        populateValidParams(params)
        def buyItem = new BuyItem(params)

        assert buyItem.save() != null
        assert BuyItem.count() == 1

        params.id = buyItem.id

        controller.delete()

        assert BuyItem.count() == 0
        assert BuyItem.get(buyItem.id) == null
        assert response.redirectedUrl == '/buyItem/list'
    }
}
