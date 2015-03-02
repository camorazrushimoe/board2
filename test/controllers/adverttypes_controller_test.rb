require 'test_helper'

class AdverttypesControllerTest < ActionController::TestCase
  setup do
    @adverttype = adverttypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adverttypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adverttype" do
    assert_difference('Adverttype.count') do
      post :create, adverttype: { title: @adverttype.title }
    end

    assert_redirected_to adverttype_path(assigns(:adverttype))
  end

  test "should show adverttype" do
    get :show, id: @adverttype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adverttype
    assert_response :success
  end

  test "should update adverttype" do
    patch :update, id: @adverttype, adverttype: { title: @adverttype.title }
    assert_redirected_to adverttype_path(assigns(:adverttype))
  end

  test "should destroy adverttype" do
    assert_difference('Adverttype.count', -1) do
      delete :destroy, id: @adverttype
    end

    assert_redirected_to adverttypes_path
  end
end
