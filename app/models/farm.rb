class Farm < ActiveRecord::Base
  attr_accessible :adress, :city, :contact_info, :farm_description, :name, :number_of_shares, :phone_number, :share_description, :zipcode
  validates_presence_of :adress
  validates_presence_of :city
  validates_presence_of :contact_info
  validates_presence_of :farm_description
  validates_presence_of :name
  validates_presence_of :number_of_shares
  validates_presence_of :share_description
  validates_presence_of :zipcode
  belongs_to :user
  belongs_to :farm_ownership
  has_many :comments
end
