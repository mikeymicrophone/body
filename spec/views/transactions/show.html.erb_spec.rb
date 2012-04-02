require 'spec_helper'

describe "transactions/show" do
  before(:each) do
    @transaction = assign(:transaction, stub_model(Transaction,
      :viber_id => 1,
      :transaction_record_id => "Transaction Record",
      :points_in => 2,
      :points_out => 3,
      :note => "MyText",
      :item_type => "Item Type",
      :item_id => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Transaction Record/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/MyText/)
    rendered.should match(/Item Type/)
    rendered.should match(/4/)
  end
end
