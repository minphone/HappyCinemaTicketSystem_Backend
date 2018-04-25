class Api::V1::RegionsController < Api::V1::BaseController

  def new
    render json: Region.all
  end
  
end