class CreateArchiveProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :archive_projects do |t|
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
