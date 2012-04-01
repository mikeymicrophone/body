class Viber < ActiveRecord::Base
  has_many :events
  has_many :rsvps
  has_many :rsvpd_events, :through => :rsvps, :source => :event
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :username
  
  def rsvp_for_event event
    rsvps.for_event(event).first
  end
end
