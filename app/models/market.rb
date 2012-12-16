class Market < ActiveRecord::Base
  attr_accessible :address, :borough, :days_open, :name, :gmaps, :latitude, :longitude, :hours, :distribute_health_bucks, :accepts_health_bucks, :accepts_EBT, :stellar
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  
  acts_as_gmappable




   def gmaps4rails_address
   "#{self.address}, New York, New York"
   end

  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE :search OR borough LIKE :search', {:search => "%#{search}%"}])
    else
      scoped
    end
  end

end



