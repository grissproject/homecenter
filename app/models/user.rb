class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :nombre, :apellido, :email, :password, :password_confirmation, :remember_me, :avatar
  # attr_accessible :title, :body

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "168x168>", :mini => "18x18>" }, :default_url => "no-user-photo.png"

  validates_uniqueness_of :username
end
