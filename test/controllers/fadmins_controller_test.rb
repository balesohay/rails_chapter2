require 'test_helper'

class FadminsControllerTest < ActionController::TestCase
  setup do
    @fadmin = fadmins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fadmins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fadmin" do
    assert_difference('Fadmin.count') do
      post :create, fadmin: { password: @fadmin.password, username: @fadmin.username }
    end

    assert_redirected_to fadmin_path(assigns(:fadmin))
  end

  test "should show fadmin" do
    get :show, id: @fadmin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fadmin
    assert_response :success
  end

  test "should update fadmin" do
    patch :update, id: @fadmin, fadmin: { password: @fadmin.password, username: @fadmin.username }
    assert_redirected_to fadmin_path(assigns(:fadmin))
  end

  test "should destroy fadmin" do
    assert_difference('Fadmin.count', -1) do
      delete :destroy, id: @fadmin
    end

    assert_redirected_to fadmins_path
  end
end
