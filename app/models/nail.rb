class Nail < ActiveRecord::Base
  # attr_accessible :title, :body
  validates_presence_of :hand_id
end
