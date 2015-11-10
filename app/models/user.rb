class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  belongs_to :role
  belongs_to :job

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
