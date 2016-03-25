require 'test_helper'

class NavbarsControllerTest < ActionController::TestCase
  setup do
    @navbar = navbars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:navbars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create navbar" do
    assert_difference('Navbar.count') do
      post :create, navbar: {  }
    end

    assert_redirected_to navbar_path(assigns(:navbar))
  end

  test "should show navbar" do
    get :show, id: @navbar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @navbar
    assert_response :success
  end

  test "should update navbar" do
    patch :update, id: @navbar, navbar: {  }
    assert_redirected_to navbar_path(assigns(:navbar))
  end

  test "should destroy navbar" do
    assert_difference('Navbar.count', -1) do
      delete :destroy, id: @navbar
    end

    assert_redirected_to navbars_path
  end
end
