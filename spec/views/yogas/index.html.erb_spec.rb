require 'spec_helper'

describe "yogas/index" do
  before(:each) do
    assign(:yogas, [
      stub_model(Yoga,
        :instructor_id => 1,
        :creator_id => 2,
        :title => "Title",
        :note => "MyText",
        :flyer => "Flyer"
      ),
      stub_model(Yoga,
        :instructor_id => 1,
        :creator_id => 2,
        :title => "Title",
        :note => "MyText",
        :flyer => "Flyer"
      )
    ])
  end

  it "renders a list of yogas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Flyer".to_s, :count => 2
  end
end
