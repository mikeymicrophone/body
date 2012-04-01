class Event < ActiveRecord::Base
  belongs_to :viber
  
  attr_accessible :description, :end_time, :flyer_image, :name, :public, :start_time, :subtitle, :viber_id
  
  mount_uploader :flyer_image, FlyerUploader
  
  scope :upcoming, lambda {{:order => 'start_time asc', :conditions => ["end_time > ?", Time.now]}}
  scope :visible, :conditions => "public > 0"
end
