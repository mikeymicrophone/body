class Rsvp < ActiveRecord::Base
  belongs_to :event
  belongs_to :viber
  
  attr_accessible :event_id, :note, :sincerity, :viber_id
  
  scope :for_event, lambda { |event| event.is_a?(Fixnum) ? {:conditions => {:event_id => event}} : {:conditions => {:event_id => event.id}} }
end
