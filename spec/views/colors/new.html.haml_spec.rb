require 'spec_helper'

describe "colors/new" do
  before(:each) do
    assign(:color, stub_model(Color,
      :polish_name => "",
      :english_name => "MyString",
      :rgb_color => "MyString"
    ).as_new_record)
  end

  it "renders new color form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => colors_path, :method => "post" do
      assert_select "input#color_polish_name", :name => "color[polish_name]"
      assert_select "input#color_english_name", :name => "color[english_name]"
      assert_select "input#color_rgb_color", :name => "color[rgb_color]"
    end
  end
end
