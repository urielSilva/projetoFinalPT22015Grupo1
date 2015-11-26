class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :role
  belongs_to :job
  belongs_to :area
  belongs_to :profiles
  
  def admin?
  	#return self.role.name == 
  end
end
