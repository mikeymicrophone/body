class Event < ActiveRecord::Base
  belongs_to :viber
  has_many :rsvps
  has_many :rsvpd_vibers, :through => :rsvps, :source => :viber
  
  has_many :tiers
  has_many :tickets, :through => :tiers
  
  attr_accessible :description, :end_time, :flyer_image, :name, :public, :start_time, :subtitle, :viber_id
  
  mount_uploader :flyer_image, FlyerUploader
  
  scope :upcoming, lambda {{:order => 'start_time asc', :conditions => ["end_time > ?", Time.now]}}
  scope :visible, :conditions => "public > 0"
  
  def available_ticket_count
    tiers.sum :remaining_quantity
  end
  
  def has_tickets_available?
    available_ticket_count > 0
  end
  
  def sold_out?
    tiers.present? && !has_tickets_available?
  end
end
