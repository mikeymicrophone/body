class Ticket < ActiveRecord::Base
  belongs_to :viber
  belongs_to :tier
  belongs_to :transaction
  has_one :event, :through => :tier
  attr_accessible :tier_id, :transaction_id, :viber_id
  
  scope :for_event, lambda { |event| {:conditions => ["tier_id in (?)", event.tiers.map(&:id)]}}
  
  before_create :check_availability, :create_transaction
  after_create :complete_transaction_data, :decrement_available_ticket_count
  
  def check_availability
    tier.remaining_quantity > 0
  end
  
  def create_transaction
    self.transaction = viber.transactions.create :points_out => tier.price
  end
  
  def complete_transaction_data
    transaction.update_attributes :item => self
  end
  
  def decrement_available_ticket_count
    tier.update_attribute :remaining_quantity, tier.remaining_quantity - 1
  end
  
  def name
    "#{tier.name} ticket for #{event.name}"
  end
end
