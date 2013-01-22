require 'spec_helper'

describe "patterns/index" do
  before(:each) do
    assign(:patterns, [
      stub_model(Pattern,
        :name_pl => "Name Pl",
        :name_ang => "Name Ang",
        :image_url => "Image Url"
      ),
      stub_model(Pattern,
        :name_pl => "Name Pl",
        :name_ang => "Name Ang",
        :image_url => "Image Url"
      )
    ])
  end

  it "renders a list of patterns" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name Pl".to_s, :count => 2
    assert_select "tr>td", :text => "Name Ang".to_s, :count => 2
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
  end
end
