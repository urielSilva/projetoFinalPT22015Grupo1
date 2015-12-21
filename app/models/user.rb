class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  belongs_to :role
  has_many :areas
  has_many :knowledges
  has_many :activities
  has_many :projects


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
