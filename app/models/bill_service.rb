class BillService < ActiveRecord::Base
  attr_accessible :account_no, :bill_address, :bill_amount, :bill_description, :bill_due_date, :bill_no, :category, :name_on_bill, :where_to_pay
  attr_accessible :bill_account_id
  belongs_to :bill_account
end
