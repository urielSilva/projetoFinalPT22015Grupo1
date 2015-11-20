class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_reference :users, :job, index: true, foreign_key: true
    add_reference :users, :role, index: true, foreign_key: true
  end
end
