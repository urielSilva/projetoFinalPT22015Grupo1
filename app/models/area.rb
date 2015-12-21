class Area < ActiveRecord::Base
  belongs_to :sector
  belongs_to :user
  validates_presence_of :name
  validates_presence_of :sector_id
end
