class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.integer :viber_id
      t.integer :event_id
      t.integer :sincerity
      t.text :note

      t.timestamps
    end
  end
end
