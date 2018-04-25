class RegionsController < ApplicationController
  before_action :check_logged
  before_action :set_region, only: [:edit, :update, :destroy, :show]

  def index
    @regions = Region.paginate(page: params[:page], per_page: 5)
  end

  def new
    @region = Region.new
  end

  def create
    @region = Region.new(region_params)
    if @region.save
      flash[:success] = "Region is successfully inserted."
      redirect_to regions_path
    else
      render 'new'
    end
  end

  def destroy
    @region.destroy
    flash[:danger] = "Region was successful deleted"
    redirect_to regions_path
  end

  def edit 
  end

  def update
    if @region.update(region_params)
      flash[:success] = "Region was successfully updated"
      redirect_to regions_path
    else    
      render 'edit'
    end
  end

  private 
    def region_params
      params.require(:region).permit(:region_name)
    end

    def set_region
      @region = Region.find(params[:id])    
    end

    def check_logged
      require_user
    end
  
end