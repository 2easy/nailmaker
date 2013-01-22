require 'spec_helper'

describe "patterns/edit" do
  before(:each) do
    @pattern = assign(:pattern, stub_model(Pattern,
      :name_pl => "MyString",
      :name_ang => "MyString",
      :image_url => "MyString"
    ))
  end

  it "renders the edit pattern form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => patterns_path(@pattern), :method => "post" do
      assert_select "input#pattern_name_pl", :name => "pattern[name_pl]"
      assert_select "input#pattern_name_ang", :name => "pattern[name_ang]"
      assert_select "input#pattern_image_url", :name => "pattern[image_url]"
    end
  end
end
