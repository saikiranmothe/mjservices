class CreateBillPays < ActiveRecord::Migration
  def change
    create_table :bill_pays do |t|
      t.string :name
      t.string :bill_no
      t.float :bill_amount
      t.date :bill_due_date
      t.integer :bill_id

      t.timestamps
    end
  end
end
