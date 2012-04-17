class CreateYsvps < ActiveRecord::Migration
  def change
    create_table :ysvps do |t|
      t.integer :yoga_id
      t.integer :viber_id
      t.integer :sincerity
      t.text :note
      t.integer :reminder_lead_time

      t.timestamps
    end
  end
end
