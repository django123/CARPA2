class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :projet_code
      t.date :duration
      t.string :amount
      t.string :public_partenership
      t.string :private_partenership
      t.string :project_situation
      t.string :focal_point
      t.string :object_project
      t.string :procedure

      t.timestamps
    end
  end
end
