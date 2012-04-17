require 'spec_helper'

describe "yogas/show" do
  before(:each) do
    @yoga = assign(:yoga, stub_model(Yoga,
      :instructor_id => 1,
      :creator_id => 2,
      :title => "Title",
      :note => "MyText",
      :flyer => "Flyer"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/Flyer/)
  end
end
