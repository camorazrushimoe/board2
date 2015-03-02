require 'test_helper'

class AdvertTypesControllerTest < ActionController::TestCase
  setup do
    @advert_type = advert_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:advert_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create advert_type" do
    assert_difference('AdvertType.count') do
      post :create, advert_type: { adv_type: @advert_type.adv_type }
    end

    assert_redirected_to advert_type_path(assigns(:advert_type))
  end

  test "should show advert_type" do
    get :show, id: @advert_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @advert_type
    assert_response :success
  end

  test "should update advert_type" do
    patch :update, id: @advert_type, advert_type: { adv_type: @advert_type.adv_type }
    assert_redirected_to advert_type_path(assigns(:advert_type))
  end

  test "should destroy advert_type" do
    assert_difference('AdvertType.count', -1) do
      delete :destroy, id: @advert_type
    end

    assert_redirected_to advert_types_path
  end
end
