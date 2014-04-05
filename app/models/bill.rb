class Bill < ActiveRecord::Base
  attr_accessible :account_number, :bill_address, :name, :nameonbill, :provider, :user_id
  attr_accessible :photo
  #relations 
  belongs_to :user
    has_many :bill_pays
	

  has_attached_file :photo, :styles => { :small => "150x150>" },
                  :url  => "/assets/bills/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/bills/:id/:style/:basename.:extension"

	validates_attachment_presence :photo
	validates_attachment_size :photo, :less_than => 10.megabytes
	validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']



end
