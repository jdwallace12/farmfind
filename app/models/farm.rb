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
  
  acts_as_gmappable

  def gmaps4rails_address
    #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
    "#{self.address}, #{self.city}, #{state}, #{self.country}" 
  end

  def full_address
    "#{address}, #{city}, #{state}, #{country}"
  end

  def gmaps4rails_infowindow
    
  end


end
