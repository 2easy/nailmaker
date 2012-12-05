require 'test_helper'

class NailTest < ActiveSupport::TestCase
  fixtures :nails

  test "nail project shouldn't be empty" do
    nail = Nail.new
    assert !nail.save
    nail.background = "red.jpg"
    assert nail.save
  end
end
