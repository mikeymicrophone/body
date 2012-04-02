require 'spec_helper'

describe "tiers/show" do
  before(:each) do
    @tier = assign(:tier, stub_model(Tier,
      :event_id => 1,
      :name => "Name",
      :price => 2,
      :quantity => 3,
      :remaining_quantity => 4,
      :contact_person_id => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Name/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
  end
end
