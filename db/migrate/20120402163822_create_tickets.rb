class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :tier_id
      t.integer :viber_id
      t.integer :transaction_id

      t.timestamps
    end
  end
end
