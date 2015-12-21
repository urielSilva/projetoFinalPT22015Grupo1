class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :description
      t.float :price
      t.string :link

      t.timestamps null: false
    end
  end
end
