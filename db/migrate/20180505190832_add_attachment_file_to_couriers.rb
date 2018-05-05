class AddAttachmentFileToCouriers < ActiveRecord::Migration[5.1]
  def self.up
    change_table :couriers do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :couriers, :file
  end
end
