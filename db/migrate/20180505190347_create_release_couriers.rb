class CreateReleaseCouriers < ActiveRecord::Migration[5.1]
  def change
    create_table :release_couriers do |t|
      t.date :date
      t.string :destination
      t.string :reference
      t.string :orderNumber
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
