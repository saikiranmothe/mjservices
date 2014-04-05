class AddUserIdToBillAccounts < ActiveRecord::Migration
  def change
    add_column :bill_accounts, :user_id, :integer
  end
end
