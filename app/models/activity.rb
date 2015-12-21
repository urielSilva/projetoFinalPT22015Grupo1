class Activity < ActiveRecord::Base
  belongs_to :activity_type
  has_many :users
  validates_presence_of :description, :credit
end
