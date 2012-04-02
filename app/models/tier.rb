class Tier < ActiveRecord::Base
  belongs_to :event
  belongs_to :ticket
  has_one :viber, :through => :ticket
  belongs_to :contact_person, :class_name => 'Viber'
  
  attr_accessible :contact_person_id, :deadline, :event_id, :name, :price, :quantity
  
  before_create :initialize_remaining_quantity
  
  def initialize_remaining_quantity
    self.remaining_quantity = quantity
  end
  
  def priced_name
    "#{name} - #{price} points"
  end
end
