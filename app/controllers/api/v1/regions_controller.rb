class Api::V1::RegionsController < Api::V1::BaseController

  def index

    render json: Region.all
    
  end
  
end