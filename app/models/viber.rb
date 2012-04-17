class Viber < ActiveRecord::Base
  has_many :events
  has_many :rsvps
  has_many :rsvpd_events, :through => :rsvps, :source => :event
  has_many :ysvps
  has_many :yogas, :through => :ysvps
  
  has_many :transactions
  has_many :tickets
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :username, :phone_number
  
  scope :alpha_email, :order => :email
  
  def rsvp_for_event event
    rsvps.for_event(event).first
  end
  
  def has_tickets_to_event? event
    tickets.for_event(event).present?
  end
  
  def name
    first_name.to_s + ' ' + last_name.to_s
  end
end
