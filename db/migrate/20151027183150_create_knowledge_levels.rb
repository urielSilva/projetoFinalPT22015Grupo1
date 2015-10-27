class CreateKnowledgeLevels < ActiveRecord::Migration
  def change
    create_table :knowledge_levels do |t|
      t.string :description
      t.string :level

      t.timestamps null: false
    end
  end
end
