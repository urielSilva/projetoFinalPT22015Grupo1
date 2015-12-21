class Project < ActiveRecord::Base
  belongs_to :project_status
  has_many :users
  validates_presence_of :description, :price, :link
end
