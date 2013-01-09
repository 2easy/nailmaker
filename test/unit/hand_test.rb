require 'test_helper'

class HandTest < ActiveSupport::TestCase
  fixtures :hands
  fixtures :nails

  test "hand should has at least one nail coloured" do
    hand = Hand.new
    assert !hand.save!
    n1 = Nail.new
    n1.hand_id = hand
    n1.img = "foo.jpg"
    n1.save
    assert hand.valid?
  end

  test "hand should have at most 5 nails" do
    hand = Hand.new
    n1,n2,n3,n4,n5,n6 = Nail.new,Nail.new,Nail.new,Nail.new,Nail.new,Nail.new
    n1.hand_id = n2.hand_id = n3.hand_id = n4.hand_id = n5.hand_id = n6.hand_id = hand.id
    assert n1.save
    assert n2.save
    assert n3.save
    assert n4.save
    assert n5.save
    assert !n6.save, "saved sixth nail"
  end
end
