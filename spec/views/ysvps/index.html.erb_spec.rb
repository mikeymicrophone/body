require 'spec_helper'

describe "ysvps/index" do
  before(:each) do
    assign(:ysvps, [
      stub_model(Ysvp,
        :yoga_id => 1,
        :viber_id => 2,
        :sincerity => 3,
        :note => "MyText"
      ),
      stub_model(Ysvp,
        :yoga_id => 1,
        :viber_id => 2,
        :sincerity => 3,
        :note => "MyText"
      )
    ])
  end

  it "renders a list of ysvps" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
