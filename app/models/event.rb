class Event < ActiveRecord::Base
  attr_accessible :description, :end_time, :flyer_image, :name, :public, :start_time, :subtitle, :viber_id
  
  scope :upcoming, lambda {{:order => 'start_time asc', :conditions => ["end_time > ?", Time.now]}}
end
