class AddAttachmentPhotoToBillPays < ActiveRecord::Migration
  def self.up
    change_table :bill_pays do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :bill_pays, :photo
  end
end
