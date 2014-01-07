require 'test_helper'

class EqsControllerTest < ActionController::TestCase
  setup do
    @eq = eqs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eqs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eq" do
    assert_difference('Eq.count') do
      post :create, eq: @eq.attributes
    end

    assert_redirected_to eq_path(assigns(:eq))
  end

  test "should show eq" do
    get :show, id: @eq
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eq
    assert_response :success
  end

  test "should update eq" do
    put :update, id: @eq, eq: @eq.attributes
    assert_redirected_to eq_path(assigns(:eq))
  end

  test "should destroy eq" do
    assert_difference('Eq.count', -1) do
      delete :destroy, id: @eq
    end

    assert_redirected_to eqs_path
  end
end
