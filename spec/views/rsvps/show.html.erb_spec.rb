require 'spec_helper'

describe "rsvps/show" do
  before(:each) do
    @rsvp = assign(:rsvp, stub_model(Rsvp,
      :viber_id => 1,
      :event_id => 2,
      :sincerity => 3,
      :note => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/MyText/)
  end
end
