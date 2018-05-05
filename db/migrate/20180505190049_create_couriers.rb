class CreateCouriers < ActiveRecord::Migration[5.1]
  def change
    create_table :couriers do |t|
      t.string :reference
      t.text :subject
      t.string :sender
      t.string :receiver
      t.string :state
      t.date :sentDate
      t.date :receiveDate
      t.string :order_number
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
