require 'spec_helper'

describe "events/edit" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :name => "MyString",
      :subtitle => "MyText",
      :description => "MyText",
      :public => 1,
      :flyer_image => "MyString",
      :viber_id => 1
    ))
  end

  it "renders the edit event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => events_path(@event), :method => "post" do
      assert_select "input#event_name", :name => "event[name]"
      assert_select "textarea#event_subtitle", :name => "event[subtitle]"
      assert_select "textarea#event_description", :name => "event[description]"
      assert_select "input#event_public", :name => "event[public]"
      assert_select "input#event_flyer_image", :name => "event[flyer_image]"
      assert_select "input#event_viber_id", :name => "event[viber_id]"
    end
  end
end
