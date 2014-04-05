class BillAccount < ActiveRecord::Base
  attr_accessible :account_no, :description, :name, :name_on_the_bill
    attr_accessible :provider

  attr_accessible :user_id
  belongs_to :user

  has_many :bill_services
end
