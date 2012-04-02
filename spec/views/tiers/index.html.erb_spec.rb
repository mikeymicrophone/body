require 'spec_helper'

describe "tiers/index" do
  before(:each) do
    assign(:tiers, [
      stub_model(Tier,
        :event_id => 1,
        :name => "Name",
        :price => 2,
        :quantity => 3,
        :remaining_quantity => 4,
        :contact_person_id => 5
      ),
      stub_model(Tier,
        :event_id => 1,
        :name => "Name",
        :price => 2,
        :quantity => 3,
        :remaining_quantity => 4,
        :contact_person_id => 5
      )
    ])
  end

  it "renders a list of tiers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
