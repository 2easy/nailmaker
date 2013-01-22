require 'spec_helper'

describe "colors/edit" do
  before(:each) do
    @color = assign(:color, stub_model(Color,
      :polish_name => "",
      :english_name => "MyString",
      :rgb_color => "MyString"
    ))
  end

  it "renders the edit color form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => colors_path(@color), :method => "post" do
      assert_select "input#color_polish_name", :name => "color[polish_name]"
      assert_select "input#color_english_name", :name => "color[english_name]"
      assert_select "input#color_rgb_color", :name => "color[rgb_color]"
    end
  end
end
