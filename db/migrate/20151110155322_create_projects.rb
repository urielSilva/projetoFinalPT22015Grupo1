class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :description
      t.float :price
      t.string :link
      t.references :project_status, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
