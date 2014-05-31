require 'test_helper'

class WhoIsControllerTest < ActionController::TestCase
  setup do
    @who_i = who_is(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:who_is)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create who_i" do
    assert_difference('WhoI.count') do
      post :create, who_i: { password: @who_i.password, username: @who_i.username }
    end

    assert_redirected_to who_i_path(assigns(:who_i))
  end

  test "should show who_i" do
    get :show, id: @who_i
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @who_i
    assert_response :success
  end

  test "should update who_i" do
    patch :update, id: @who_i, who_i: { password: @who_i.password, username: @who_i.username }
    assert_redirected_to who_i_path(assigns(:who_i))
  end

  test "should destroy who_i" do
    assert_difference('WhoI.count', -1) do
      delete :destroy, id: @who_i
    end

    assert_redirected_to who_is_path
  end
end
