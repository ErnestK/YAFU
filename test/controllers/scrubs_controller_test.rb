require 'test_helper'

class ScrubsControllerTest < ActionController::TestCase
  setup do
    @scrub = scrubs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scrubs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scrub" do
    assert_difference('Scrub.count') do
      post :create, scrub: { file_type: @scrub.file_type, name: @scrub.name, size: @scrub.size }
    end

    assert_redirected_to scrub_path(assigns(:scrub))
  end

  test "should show scrub" do
    get :show, id: @scrub
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scrub
    assert_response :success
  end

  test "should update scrub" do
    patch :update, id: @scrub, scrub: { file_type: @scrub.file_type, name: @scrub.name, size: @scrub.size }
    assert_redirected_to scrub_path(assigns(:scrub))
  end

  test "should destroy scrub" do
    assert_difference('Scrub.count', -1) do
      delete :destroy, id: @scrub
    end

    assert_redirected_to scrubs_path
  end
end
