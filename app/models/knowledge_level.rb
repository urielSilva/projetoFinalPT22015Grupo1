class KnowledgeLevel < ActiveRecord::Base
	has_many :knowledges, dependent: :destroy
end
