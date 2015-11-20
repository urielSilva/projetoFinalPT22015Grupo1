class CreateProjectStatus < ActiveRecord::Migration
  def change
    create_table :project_status do |t|
      t.string :status

      t.timestamps null: false
    end
  end
end
