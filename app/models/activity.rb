class Activity < ActiveRecord::Base
  belongs_to :activity_type
<<<<<<< HEAD
  validates_presence_of :description, :credit
=======
  validates_presence_of :description
  validates_presence_of :credit
>>>>>>> d6a9e32818a8ac64ad99093d43e0748768d010cd
end
