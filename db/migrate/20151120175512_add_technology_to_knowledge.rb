class AddTechnologyToKnowledge < ActiveRecord::Migration
  def change
    add_reference :knowledges, :technology, index: true, foreign_key: true
  end
end
