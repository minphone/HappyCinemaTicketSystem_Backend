class Api::V1::AvatorsController < Api::V1::BaseController

  def index
    render json: Avator.all
    
  end
  
end