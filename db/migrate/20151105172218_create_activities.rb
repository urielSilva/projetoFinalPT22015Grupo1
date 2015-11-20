class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :description
      t.integer :credit
      t.references :activity_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
