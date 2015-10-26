class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :job_name

      t.timestamps null: false
    end
  end
end
