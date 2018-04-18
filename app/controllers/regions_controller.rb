class RegionsController < BaseController

  def index
    @regions = Region.all
  end
  
end