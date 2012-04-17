require 'spec_helper'

describe "ysvps/new" do
  before(:each) do
    assign(:ysvp, stub_model(Ysvp,
      :yoga_id => 1,
      :viber_id => 1,
      :sincerity => 1,
      :note => "MyText"
    ).as_new_record)
  end

  it "renders new ysvp form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ysvps_path, :method => "post" do
      assert_select "input#ysvp_yoga_id", :name => "ysvp[yoga_id]"
      assert_select "input#ysvp_viber_id", :name => "ysvp[viber_id]"
      assert_select "input#ysvp_sincerity", :name => "ysvp[sincerity]"
      assert_select "textarea#ysvp_note", :name => "ysvp[note]"
    end
  end
end
