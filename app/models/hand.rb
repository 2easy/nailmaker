class Hand < ActiveRecord::Base
  # attr_accessible :title, :body
  after_validation :have_at_least_one_nail

  def have_at_least_one_nail
    !Nail.where(:hand_id => self).empty?
  end
end
