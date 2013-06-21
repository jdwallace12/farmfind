class Farm < ActiveRecord::Base
  attr_accessible :address, :city, :state, :farm_description, :name,
    :number_of_shares, :phone_number, :share_description, :share_price,
    :certification, :website, :country, :longitude, :latitude

  validates_presence_of :address
  validates_presence_of :city
  validates_presence_of :share_price
  validates_presence_of :farm_description
  validates_presence_of :name
  validates_presence_of :number_of_shares
  validates_presence_of :share_description
  validates_presence_of :certification
  validates_presence_of :state
  validates_presence_of :country
  validates_presence_of :user
  
  belongs_to :user

  geocoded_by :full_address
  after_validation :geocode, :if => :address_changed?
  
  
  def full_address
  "#{address}, #{city}, #{state}, #{country}"
  end

end
