class AddAttachmentPictureToCarousels < ActiveRecord::Migration
  def self.up
    change_table :carousels do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :carousels, :picture
  end
end
