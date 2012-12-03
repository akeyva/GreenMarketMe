class Market < ActiveRecord::Base
  attr_accessible :address, :borough, :days_open, :name, :gmaps, :latitude, :longitude
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  
  acts_as_gmappable




   def gmaps4rails_address
   "#{self.address}, New York, New York"
   end



end



