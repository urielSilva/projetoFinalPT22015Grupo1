class CreateProjectStatuses < ActiveRecord::Migration
  def change
    create_table :project_statuses do |t|
      t.string :status

      t.timestamps null: false
    end
  end
end
