require 'spec_helper'

describe "rsvps/new" do
  before(:each) do
    assign(:rsvp, stub_model(Rsvp,
      :viber_id => 1,
      :event_id => 1,
      :sincerity => 1,
      :note => "MyText"
    ).as_new_record)
  end

  it "renders new rsvp form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rsvps_path, :method => "post" do
      assert_select "input#rsvp_viber_id", :name => "rsvp[viber_id]"
      assert_select "input#rsvp_event_id", :name => "rsvp[event_id]"
      assert_select "input#rsvp_sincerity", :name => "rsvp[sincerity]"
      assert_select "textarea#rsvp_note", :name => "rsvp[note]"
    end
  end
end
