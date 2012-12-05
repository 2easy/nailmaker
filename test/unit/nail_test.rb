require 'test_helper'

class NailTest < ActiveSupport::TestCase
  fixtures :nails
  fixtures :hands

  test "nail project shouldn't be empty" do
    nail = Nail.new
    assert !nail.save, "saved empty nail"
    nail.img = "red.jpg"
    hand = Hand.all[0]
    nail.hand_id = hand.id
    assert nail.save!
  end
end
