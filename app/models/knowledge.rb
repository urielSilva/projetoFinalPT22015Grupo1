class Knowledge < ActiveRecord::Base
  belongs_to :knowledge_level
  belongs_to :technology
end
