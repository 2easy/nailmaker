require 'spec_helper'

describe "patterns/show" do
  before(:each) do
    @pattern = assign(:pattern, stub_model(Pattern,
      :name_pl => "Name Pl",
      :name_ang => "Name Ang",
      :image_url => "Image Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name Pl/)
    rendered.should match(/Name Ang/)
    rendered.should match(/Image Url/)
  end
end
