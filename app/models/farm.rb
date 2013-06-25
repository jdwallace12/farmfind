class Farm < ActiveRecord::Base
  attr_accessible :address, :city, :state, :farm_description, :name,
    :number_of_shares, :phone_number, :share_description, :share_price,
    :certification, :website, :country, :longitude, :latitude, :gmaps, :image

  mount_uploader :image, ImageUploader

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

  acts_as_gmappable
  

  def gmaps4rails_address
    "#{self.address}, #{self.city}, #{self.state}, #{self.country}" 
  end

  def gmaps4rails_infowindow
   
    "<h2>#{self.name}</h2>
     <img src=\"#{self.image.profile}\">
    <h6>Location:</h6> 
    <h5>#{self.city}, #{self.state}</h5> 
    <hr>
    <h6>Website:</h6>
    <a href=\"http://#{self.website}\" target=_blank> #{self.website} </a>
    <h6>Phone Number:</h6>
    <p>#{self.phone_number}<p>
    <h6>Email:</h6>
    <a href=\"mailto:#{self.user.email}\"> #{self.user.email} </a>
    <hr>
    <h6>Certification:</h6>
    <p>#{self.certification}<p>
    <h6>Number of Shares Offered:</h6>
    <p>#{self.number_of_shares}<p>
    <h6>Share Price:</h6>
    <p>#{self.share_price}<p>
    <hr>
    <h6>Share Description:</h6> 
    <p>#{self.share_description}</p>
    <hr>
    <h6>Farm Description:</h6> 
    <p>#{self.farm_description}</p>"
  end


  def gmaps4rails_marker_picture
    {
      "picture" =>"http://johnwallacedesigns.com/wp-content/uploads/2013/06/farm-2.png" ,
       "width" => 37 , 
       "height" => 37,
    }
  end
end
