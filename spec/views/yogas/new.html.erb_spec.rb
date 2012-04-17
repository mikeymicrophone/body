require 'spec_helper'

describe "yogas/new" do
  before(:each) do
    assign(:yoga, stub_model(Yoga,
      :instructor_id => 1,
      :creator_id => 1,
      :title => "MyString",
      :note => "MyText",
      :flyer => "MyString"
    ).as_new_record)
  end

  it "renders new yoga form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => yogas_path, :method => "post" do
      assert_select "input#yoga_instructor_id", :name => "yoga[instructor_id]"
      assert_select "input#yoga_creator_id", :name => "yoga[creator_id]"
      assert_select "input#yoga_title", :name => "yoga[title]"
      assert_select "textarea#yoga_note", :name => "yoga[note]"
      assert_select "input#yoga_flyer", :name => "yoga[flyer]"
    end
  end
end
