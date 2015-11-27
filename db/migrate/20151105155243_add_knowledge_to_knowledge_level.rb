class AddKnowledgeToKnowledgeLevel < ActiveRecord::Migration
  def change
    add_reference :knowledge_levels, :knowledge, index: true, foreign_key: true
  end
end
