require 'test_helper'

class BillServicesControllerTest < ActionController::TestCase
  setup do
    @bill_service = bill_services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bill_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bill_service" do
    assert_difference('BillService.count') do
      post :create, bill_service: { account_no: @bill_service.account_no, bill_address: @bill_service.bill_address, bill_amount: @bill_service.bill_amount, bill_description: @bill_service.bill_description, bill_due_date: @bill_service.bill_due_date, bill_no: @bill_service.bill_no, category: @bill_service.category, name_on_bill: @bill_service.name_on_bill, where_to_pay: @bill_service.where_to_pay }
    end

    assert_redirected_to bill_service_path(assigns(:bill_service))
  end

  test "should show bill_service" do
    get :show, id: @bill_service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bill_service
    assert_response :success
  end

  test "should update bill_service" do
    put :update, id: @bill_service, bill_service: { account_no: @bill_service.account_no, bill_address: @bill_service.bill_address, bill_amount: @bill_service.bill_amount, bill_description: @bill_service.bill_description, bill_due_date: @bill_service.bill_due_date, bill_no: @bill_service.bill_no, category: @bill_service.category, name_on_bill: @bill_service.name_on_bill, where_to_pay: @bill_service.where_to_pay }
    assert_redirected_to bill_service_path(assigns(:bill_service))
  end

  test "should destroy bill_service" do
    assert_difference('BillService.count', -1) do
      delete :destroy, id: @bill_service
    end

    assert_redirected_to bill_services_path
  end
end
