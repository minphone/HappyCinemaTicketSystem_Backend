class GenresController < ApplicationController
  before_action :check_logged
  before_action :set_genre, only: [:edit, :update, :destroy, :show]

  def index
    @genres = Genre.paginate(page: params[:page] ,per_page: 10)
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      flash[:success] = "Genre was successfully registered."
      redirect_to genres_path
    else
      render 'new'
    end
  end

  def destroy
    @genre.destroy
    flash[:danger] = "Genre was successful deleted"
    redirect_to genres_path
  end

  def edit  
  end

  def update
    if @genre.update(genre_params)
      flash[:success] = "Genre was successfully updated"
      redirect_to genres_path
    else
      render 'edit'
    end
  end

  private
    def set_genre
      @genre = Genre.find(params[:id])   
    end

    def genre_params
      params.require(:genre).permit(:genre_name, :genre_description)
    end

    def check_logged
      require_user
    end
  
end