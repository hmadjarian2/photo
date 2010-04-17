require 'test_helper'

class CaterogiesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caterogies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create caterogy" do
    assert_difference('Caterogy.count') do
      post :create, :caterogy => { }
    end

    assert_redirected_to caterogy_path(assigns(:caterogy))
  end

  test "should show caterogy" do
    get :show, :id => caterogies(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => caterogies(:one).to_param
    assert_response :success
  end

  test "should update caterogy" do
    put :update, :id => caterogies(:one).to_param, :caterogy => { }
    assert_redirected_to caterogy_path(assigns(:caterogy))
  end

  test "should destroy caterogy" do
    assert_difference('Caterogy.count', -1) do
      delete :destroy, :id => caterogies(:one).to_param
    end

    assert_redirected_to caterogies_path
  end
end
