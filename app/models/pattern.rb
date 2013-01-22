class Pattern < ActiveRecord::Base
  attr_accessible :image_url, :name_ang, :name_pl
  attr_accessible :image
   has_attached_file :image,
           :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
           :url => "/system/:attachment/:id/:style/:filename"

end
