class WelcomeController < ApplicationController
  def index
  end
  def designer
    @design = Design.new
    
    @colors = Color.all
    @patterns = Pattern.all
  end
  def print
    @design = Design.new(params[:design])
  end
end

