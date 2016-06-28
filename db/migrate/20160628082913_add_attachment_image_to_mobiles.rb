class AddAttachmentImageToMobiles < ActiveRecord::Migration
  def self.up
    change_table :mobiles do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :mobiles, :image
  end
end
