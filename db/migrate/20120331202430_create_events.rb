class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :subtitle
      t.text :description
      t.datetime :start_time
      t.datetime :end_time
      t.integer :public
      t.string :flyer_image
      t.integer :viber_id

      t.timestamps
    end
  end
end
