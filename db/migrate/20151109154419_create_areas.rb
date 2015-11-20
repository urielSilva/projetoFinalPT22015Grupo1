class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :name
      t.references :sector, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
