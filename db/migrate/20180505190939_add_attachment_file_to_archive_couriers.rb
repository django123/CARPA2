class AddAttachmentFileToArchiveCouriers < ActiveRecord::Migration[5.1]
  def self.up
    change_table :archive_couriers do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :archive_couriers, :file
  end
end
