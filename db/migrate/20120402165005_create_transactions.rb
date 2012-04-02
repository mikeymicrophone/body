class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :viber_id
      t.string :transaction_record_id
      t.integer :points_in
      t.integer :points_out
      t.text :note
      t.string :item_type
      t.integer :item_id

      t.timestamps
    end
  end
end
