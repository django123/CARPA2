class CreateArchiveCouriers < ActiveRecord::Migration[5.1]
  def change
    create_table :archive_couriers do |t|
      t.references :Courier, foreign_key: true

      t.timestamps
    end
  end
end
