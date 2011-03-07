require 'test_helper'

class ExhibidoresControllerTest < ActionController::TestCase
  setup do
    @exhibidor = exhibidores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exhibidores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exhibidor" do
    assert_difference('Exhibidor.count') do
      post :create, :exhibidor => @exhibidor.attributes
    end

    assert_redirected_to exhibidor_path(assigns(:exhibidor))
  end

  test "should show exhibidor" do
    get :show, :id => @exhibidor.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @exhibidor.to_param
    assert_response :success
  end

  test "should update exhibidor" do
    put :update, :id => @exhibidor.to_param, :exhibidor => @exhibidor.attributes
    assert_redirected_to exhibidor_path(assigns(:exhibidor))
  end

  test "should destroy exhibidor" do
    assert_difference('Exhibidor.count', -1) do
      delete :destroy, :id => @exhibidor.to_param
    end

    assert_redirected_to exhibidores_path
  end
end
