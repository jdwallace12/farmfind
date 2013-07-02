class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :role
  
  has_many :farms, :dependent => :destroy
  
  def admin?
    role == "admin"
  end
end
