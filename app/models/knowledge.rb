class Knowledge < ActiveRecord::Base
  belongs_to :knowledge_level, :technology
end
