class PhoneNumbers < ActiveRecord::Migration
  def up
    add_column :vibers, :phone_number, :string
  end

  def down
    remove_column :vibers, :phone_number, :string
  end
end
