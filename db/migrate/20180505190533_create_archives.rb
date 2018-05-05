class CreateArchives < ActiveRecord::Migration[5.1]
  def change
    create_table :archives do |t|
      t.string :name
      t.text :description
      t.string :reference
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
