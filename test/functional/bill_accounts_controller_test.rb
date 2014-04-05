require 'test_helper'

class BillAccountsControllerTest < ActionController::TestCase
  setup do
    @bill_account = bill_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bill_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bill_account" do
    assert_difference('BillAccount.count') do
      post :create, bill_account: { account_no: @bill_account.account_no, description: @bill_account.description, name: @bill_account.name, name_on_the_bill: @bill_account.name_on_the_bill }
    end

    assert_redirected_to bill_account_path(assigns(:bill_account))
  end

  test "should show bill_account" do
    get :show, id: @bill_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bill_account
    assert_response :success
  end

  test "should update bill_account" do
    put :update, id: @bill_account, bill_account: { account_no: @bill_account.account_no, description: @bill_account.description, name: @bill_account.name, name_on_the_bill: @bill_account.name_on_the_bill }
    assert_redirected_to bill_account_path(assigns(:bill_account))
  end

  test "should destroy bill_account" do
    assert_difference('BillAccount.count', -1) do
      delete :destroy, id: @bill_account
    end

    assert_redirected_to bill_accounts_path
  end
end
