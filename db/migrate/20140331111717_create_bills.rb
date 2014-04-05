class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :name
      t.string :account_number
      t.string :nameonbill
      t.text :bill_address
      t.string :provider
      t.integer :user_id

      t.timestamps
    end
  end
end
