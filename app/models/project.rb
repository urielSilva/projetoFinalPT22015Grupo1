class Project < ActiveRecord::Base
  belongs_to :project_status
  validates_presence_of :description, :price, :link
end
