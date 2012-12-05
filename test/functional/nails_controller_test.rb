require 'test_helper'

class NailsControllerTest < ActionController::TestCase
  setup do
    @nail = nails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nail" do
    assert_difference('Nail.count') do
      post :create, nail: {  }
    end

    assert_redirected_to nail_path(assigns(:nail))
  end

  test "should show nail" do
    get :show, id: @nail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nail
    assert_response :success
  end

  test "should update nail" do
    put :update, id: @nail, nail: {  }
    assert_redirected_to nail_path(assigns(:nail))
  end

  test "should destroy nail" do
    assert_difference('Nail.count', -1) do
      delete :destroy, id: @nail
    end

    assert_redirected_to nails_path
  end
end
