require 'spec_helper'

describe "colors/show" do
  before(:each) do
    @color = assign(:color, stub_model(Color,
      :polish_name => "",
      :english_name => "English Name",
      :rgb_color => "Rgb Color"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/English Name/)
    rendered.should match(/Rgb Color/)
  end
end
