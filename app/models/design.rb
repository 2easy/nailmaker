class Design
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  
  attr_accessor :nail1, :nail2, :nail3, :nail4, :nail5
  attr_accessor :french1, :french2, :french3, :french4, :french5
  attr_accessor :pattern1, :pattern2, :pattern3, :pattern4, :pattern5
  
  def persisted?
    false
  end
end
