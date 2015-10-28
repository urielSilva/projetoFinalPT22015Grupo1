class CreateSectors < ActiveRecord::Migration
  def change
    create_table :sectors do |t|
      t.string :short_name
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
