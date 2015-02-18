require 'test_helper'

class TrademarksControllerTest < ActionController::TestCase
  setup do
    @trademark = trademarks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trademarks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trademark" do
    assert_difference('Trademark.count') do
      post :create, trademark: { applicationNumber: @trademark.applicationNumber, comments: @trademark.comments, country: @trademark.country, dueDate: @trademark.dueDate, filingDate: @trademark.filingDate, goodsAndServices: @trademark.goodsAndServices, ic: @trademark.ic, mark: @trademark.mark, owner: @trademark.owner, registrationDate: @trademark.registrationDate, registrationNumber: @trademark.registrationNumber, secondDueDate: @trademark.secondDueDate, status: @trademark.status, statusDate: @trademark.statusDate }
    end

    assert_redirected_to trademark_path(assigns(:trademark))
  end

  test "should show trademark" do
    get :show, id: @trademark
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trademark
    assert_response :success
  end

  test "should update trademark" do
    patch :update, id: @trademark, trademark: { applicationNumber: @trademark.applicationNumber, comments: @trademark.comments, country: @trademark.country, dueDate: @trademark.dueDate, filingDate: @trademark.filingDate, goodsAndServices: @trademark.goodsAndServices, ic: @trademark.ic, mark: @trademark.mark, owner: @trademark.owner, registrationDate: @trademark.registrationDate, registrationNumber: @trademark.registrationNumber, secondDueDate: @trademark.secondDueDate, status: @trademark.status, statusDate: @trademark.statusDate }
    assert_redirected_to trademark_path(assigns(:trademark))
  end

  test "should destroy trademark" do
    assert_difference('Trademark.count', -1) do
      delete :destroy, id: @trademark
    end

    assert_redirected_to trademarks_path
  end
end
