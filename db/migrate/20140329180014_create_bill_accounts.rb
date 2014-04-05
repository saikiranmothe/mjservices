class CreateBillAccounts < ActiveRecord::Migration
  def change
    create_table :bill_accounts do |t|
      t.string :name
      t.string :account_no
      t.text :name_on_the_bill
      t.text :description

      t.timestamps
    end
  end
end
