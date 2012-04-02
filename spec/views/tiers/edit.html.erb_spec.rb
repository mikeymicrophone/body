require 'spec_helper'

describe "tiers/edit" do
  before(:each) do
    @tier = assign(:tier, stub_model(Tier,
      :event_id => 1,
      :name => "MyString",
      :price => 1,
      :quantity => 1,
      :remaining_quantity => 1,
      :contact_person_id => 1
    ))
  end

  it "renders the edit tier form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tiers_path(@tier), :method => "post" do
      assert_select "input#tier_event_id", :name => "tier[event_id]"
      assert_select "input#tier_name", :name => "tier[name]"
      assert_select "input#tier_price", :name => "tier[price]"
      assert_select "input#tier_quantity", :name => "tier[quantity]"
      assert_select "input#tier_remaining_quantity", :name => "tier[remaining_quantity]"
      assert_select "input#tier_contact_person_id", :name => "tier[contact_person_id]"
    end
  end
end
