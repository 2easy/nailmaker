require 'spec_helper'

describe "colors/index" do
  before(:each) do
    assign(:colors, [
      stub_model(Color,
        :polish_name => "",
        :english_name => "English Name",
        :rgb_color => "Rgb Color"
      ),
      stub_model(Color,
        :polish_name => "",
        :english_name => "English Name",
        :rgb_color => "Rgb Color"
      )
    ])
  end

  it "renders a list of colors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "English Name".to_s, :count => 2
    assert_select "tr>td", :text => "Rgb Color".to_s, :count => 2
  end
end
