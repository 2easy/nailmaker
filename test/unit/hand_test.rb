require 'test_helper'

class HandTest < ActiveSupport::TestCase
  fixtures :hands

  test "hand should has at least one nail coloured" do
    hand = Hand.new
    assert !hand.save
  end

  test "hand should have at most 5 nails" do
    hand = Hand.new
    n1,n2,n3,n4,n5,n6 = Nail.new,Nail.new,Nail.new,Nail.new,Nail.new,Nail.new
    assert hand.add_nail(n1.id)
    assert hand.add_nail(n2.id)
    assert hand.add_nail(n3.id)
    assert hand.add_nail(n4.id)
    assert hand.add_nail(n5.id)
    assert !hand.add_nail(n6.id)
  end
end
