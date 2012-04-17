class CreateYogas < ActiveRecord::Migration
  def change
    create_table :yogas do |t|
      t.datetime :time
      t.integer :instructor_id
      t.integer :creator_id
      t.datetime :end_time
      t.string :title
      t.text :note
      t.string :flyer

      t.timestamps
    end
  end
end
