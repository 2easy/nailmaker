require 'spec_helper'

describe "Patterns" do
  describe "GET /patterns" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get patterns_path
      response.status.should be(200)
    end
  end
end
