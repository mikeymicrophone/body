require 'spec_helper'

describe "events/index" do
  before(:each) do
    assign(:events, [
      stub_model(Event,
        :name => "Name",
        :subtitle => "MyText",
        :description => "MyText",
        :public => 1,
        :flyer_image => "Flyer Image",
        :viber_id => 2
      ),
      stub_model(Event,
        :name => "Name",
        :subtitle => "MyText",
        :description => "MyText",
        :public => 1,
        :flyer_image => "Flyer Image",
        :viber_id => 2
      )
    ])
  end

  it "renders a list of events" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Flyer Image".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
