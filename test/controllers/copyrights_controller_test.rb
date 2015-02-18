require 'test_helper'

class CopyrightsControllerTest < ActionController::TestCase
  setup do
    @copyright = copyrights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:copyrights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create copyright" do
    assert_difference('Copyright.count') do
      post :create, copyright: { author: @copyright.author, owner: @copyright.owner, publishedDate: @copyright.publishedDate, registrationDate: @copyright.registrationDate, registrationNumber: @copyright.registrationNumber, title: @copyright.title, workType: @copyright.workType }
    end

    assert_redirected_to copyright_path(assigns(:copyright))
  end

  test "should show copyright" do
    get :show, id: @copyright
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @copyright
    assert_response :success
  end

  test "should update copyright" do
    patch :update, id: @copyright, copyright: { author: @copyright.author, owner: @copyright.owner, publishedDate: @copyright.publishedDate, registrationDate: @copyright.registrationDate, registrationNumber: @copyright.registrationNumber, title: @copyright.title, workType: @copyright.workType }
    assert_redirected_to copyright_path(assigns(:copyright))
  end

  test "should destroy copyright" do
    assert_difference('Copyright.count', -1) do
      delete :destroy, id: @copyright
    end

    assert_redirected_to copyrights_path
  end
end
