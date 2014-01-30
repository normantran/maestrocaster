require 'test_helper'

class ImprovisersControllerTest < ActionController::TestCase
  setup do
    @improviser = improvisers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:improvisers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create improviser" do
    assert_difference('Improviser.count') do
      post :create, improviser: { string: @improviser.string }
    end

    assert_redirected_to improviser_path(assigns(:improviser))
  end

  test "should show improviser" do
    get :show, id: @improviser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @improviser
    assert_response :success
  end

  test "should update improviser" do
    patch :update, id: @improviser, improviser: { string: @improviser.string }
    assert_redirected_to improviser_path(assigns(:improviser))
  end

  test "should destroy improviser" do
    assert_difference('Improviser.count', -1) do
      delete :destroy, id: @improviser
    end

    assert_redirected_to improvisers_path
  end
end
