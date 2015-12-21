class AddProjectStatusToProject < ActiveRecord::Migration
  def change
    add_reference :projects, :project_status, index: true, foreign_key: true
  end
end
