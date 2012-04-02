require 'spec_helper'

describe "transactions/index" do
  before(:each) do
    assign(:transactions, [
      stub_model(Transaction,
        :viber_id => 1,
        :transaction_record_id => "Transaction Record",
        :points_in => 2,
        :points_out => 3,
        :note => "MyText",
        :item_type => "Item Type",
        :item_id => 4
      ),
      stub_model(Transaction,
        :viber_id => 1,
        :transaction_record_id => "Transaction Record",
        :points_in => 2,
        :points_out => 3,
        :note => "MyText",
        :item_type => "Item Type",
        :item_id => 4
      )
    ])
  end

  it "renders a list of transactions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Transaction Record".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Item Type".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
