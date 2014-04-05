require 'test_helper'

class BillPaysControllerTest < ActionController::TestCase
  setup do
    @bill_pay = bill_pays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bill_pays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bill_pay" do
    assert_difference('BillPay.count') do
      post :create, bill_pay: { bill_amount: @bill_pay.bill_amount, bill_due_date: @bill_pay.bill_due_date, bill_id: @bill_pay.bill_id, bill_no: @bill_pay.bill_no, name: @bill_pay.name }
    end

    assert_redirected_to bill_pay_path(assigns(:bill_pay))
  end

  test "should show bill_pay" do
    get :show, id: @bill_pay
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bill_pay
    assert_response :success
  end

  test "should update bill_pay" do
    put :update, id: @bill_pay, bill_pay: { bill_amount: @bill_pay.bill_amount, bill_due_date: @bill_pay.bill_due_date, bill_id: @bill_pay.bill_id, bill_no: @bill_pay.bill_no, name: @bill_pay.name }
    assert_redirected_to bill_pay_path(assigns(:bill_pay))
  end

  test "should destroy bill_pay" do
    assert_difference('BillPay.count', -1) do
      delete :destroy, id: @bill_pay
    end

    assert_redirected_to bill_pays_path
  end
end
