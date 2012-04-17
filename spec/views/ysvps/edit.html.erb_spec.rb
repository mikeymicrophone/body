require 'spec_helper'

describe "ysvps/edit" do
  before(:each) do
    @ysvp = assign(:ysvp, stub_model(Ysvp,
      :yoga_id => 1,
      :viber_id => 1,
      :sincerity => 1,
      :note => "MyText"
    ))
  end

  it "renders the edit ysvp form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ysvps_path(@ysvp), :method => "post" do
      assert_select "input#ysvp_yoga_id", :name => "ysvp[yoga_id]"
      assert_select "input#ysvp_viber_id", :name => "ysvp[viber_id]"
      assert_select "input#ysvp_sincerity", :name => "ysvp[sincerity]"
      assert_select "textarea#ysvp_note", :name => "ysvp[note]"
    end
  end
end
