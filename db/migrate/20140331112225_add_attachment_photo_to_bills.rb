class AddAttachmentPhotoToBills < ActiveRecord::Migration
  def self.up
    change_table :bills do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :bills, :photo
  end
end
