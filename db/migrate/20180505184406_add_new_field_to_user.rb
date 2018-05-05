class AddNewFieldToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :lName, :string
    add_column :users, :fName, :string
    add_column :users, :adress, :string
    add_column :users, :phone, :string
    add_column :users, :registration_number, :string
    add_column :users, :skin, :string
  end
end
