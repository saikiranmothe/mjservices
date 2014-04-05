class BillPay < ActiveRecord::Base
  attr_accessible :bill_amount, :bill_due_date, :bill_id, :bill_no, :name
  attr_accessible :photo
  #relations
  attr_accessible :bill_id
  belongs_to :bill
  
  has_attached_file :photo, :styles => { :small => "150x150>" },
                  :url  => "/assets/bill_pays/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/bill_pays/:id/:style/:basename.:extension"

	validates_attachment_presence :photo
	validates_attachment_size :photo, :less_than => 10.megabytes
	validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']

end
