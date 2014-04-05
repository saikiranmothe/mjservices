class CreateBillServices < ActiveRecord::Migration
  def change
    create_table :bill_services do |t|
      t.string :category
      t.text :bill_description
      t.string :bill_no
      t.string :name_on_bill
      t.text :bill_address
      t.string :account_no
      t.float :bill_amount
      t.date :bill_due_date
      t.string :where_to_pay

      t.timestamps
    end
  end
end
