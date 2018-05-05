class CreateArchiveReleaseCouriers < ActiveRecord::Migration[5.1]
  def change
    create_table :archive_release_couriers do |t|
      t.references :ReleaseCourier, foreign_key: true

      t.timestamps
    end
  end
end
