class Transaction < ActiveRecord::Base
  belongs_to :viber
  belongs_to :item, :polymorphic => true
  
  attr_accessible :item_id, :item_type, :note, :points_in, :points_out, :transaction_record_id, :viber_id, :item
end
