class AddBillAccountIdToBillServices < ActiveRecord::Migration
  def change
    add_column :bill_services, :bill_account_id, :integer
  end
end
