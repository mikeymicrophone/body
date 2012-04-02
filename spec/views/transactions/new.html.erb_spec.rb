require 'spec_helper'

describe "transactions/new" do
  before(:each) do
    assign(:transaction, stub_model(Transaction,
      :viber_id => 1,
      :transaction_record_id => "MyString",
      :points_in => 1,
      :points_out => 1,
      :note => "MyText",
      :item_type => "MyString",
      :item_id => 1
    ).as_new_record)
  end

  it "renders new transaction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => transactions_path, :method => "post" do
      assert_select "input#transaction_viber_id", :name => "transaction[viber_id]"
      assert_select "input#transaction_transaction_record_id", :name => "transaction[transaction_record_id]"
      assert_select "input#transaction_points_in", :name => "transaction[points_in]"
      assert_select "input#transaction_points_out", :name => "transaction[points_out]"
      assert_select "textarea#transaction_note", :name => "transaction[note]"
      assert_select "input#transaction_item_type", :name => "transaction[item_type]"
      assert_select "input#transaction_item_id", :name => "transaction[item_id]"
    end
  end
end
