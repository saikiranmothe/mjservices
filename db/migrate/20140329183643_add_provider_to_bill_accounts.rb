class AddProviderToBillAccounts < ActiveRecord::Migration
  def change
    add_column :bill_accounts, :provider, :string
  end
end
