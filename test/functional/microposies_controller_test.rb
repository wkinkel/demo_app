require 'test_helper'

class MicroposiesControllerTest < ActionController::TestCase
  setup do
    @microposy = microposies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:microposies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create microposy" do
    assert_difference('Microposy.count') do
      post :create, microposy: @microposy.attributes
    end

    assert_redirected_to microposy_path(assigns(:microposy))
  end

  test "should show microposy" do
    get :show, id: @microposy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @microposy
    assert_response :success
  end

  test "should update microposy" do
    put :update, id: @microposy, microposy: @microposy.attributes
    assert_redirected_to microposy_path(assigns(:microposy))
  end

  test "should destroy microposy" do
    assert_difference('Microposy.count', -1) do
      delete :destroy, id: @microposy
    end

    assert_redirected_to microposies_path
  end
end
