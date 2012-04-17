class Ysvp < ActiveRecord::Base
  belongs_to :yoga
  belongs_to :viber
  attr_accessible :note, :sincerity, :viber_id, :yoga_id, :reminder_lead_time
end
