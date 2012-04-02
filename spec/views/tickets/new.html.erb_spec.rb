require 'spec_helper'

describe "tickets/new" do
  before(:each) do
    assign(:ticket, stub_model(Ticket,
      :tier_id => 1,
      :viber_id => 1,
      :transaction_id => 1
    ).as_new_record)
  end

  it "renders new ticket form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tickets_path, :method => "post" do
      assert_select "input#ticket_tier_id", :name => "ticket[tier_id]"
      assert_select "input#ticket_viber_id", :name => "ticket[viber_id]"
      assert_select "input#ticket_transaction_id", :name => "ticket[transaction_id]"
    end
  end
end
