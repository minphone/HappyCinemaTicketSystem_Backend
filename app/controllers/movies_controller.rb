class MoviesController < ApplicationController
  before_action :set_movie, only: [:edit, :update, :destroy, :show]

  def index
    @movies = Movie.paginate(page: params[:page] ,per_page: 10)
  end

  def new
    @genres = Genre.all
    @movie = Movie.new
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    @movie.destroy
    flash[:danger] = "Article was successfully deleted"
    redirect_to movies_path
  end

  def create
    @movie = Movie.new(movies_params)
    if @movie.save
      flash[:success] = "Movie was successfully created."
      redirect_to movies_path
    else
      render 'new'
    end
  end

  private
    def movies_params
      params.require(:movie).permit(:title, :movie_poster, :movie_background_poster, :short_desc, :isMovie3D, :full_desc, genre_ids: [])
    end

    def set_movie
      @movie = Movie.find(params[:id])
    end
end