class CreateTiers < ActiveRecord::Migration
  def change
    create_table :tiers do |t|
      t.integer :event_id
      t.string :name
      t.integer :price
      t.integer :quantity
      t.integer :remaining_quantity
      t.datetime :deadline
      t.integer :contact_person_id

      t.timestamps
    end
  end
end
