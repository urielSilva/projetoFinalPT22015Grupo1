class Activity < ActiveRecord::Base
  belongs_to :activity_type
  validates_presence_of :description, :credit
end
