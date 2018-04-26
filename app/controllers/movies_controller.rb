class MoviesController < ApplicationController

  def index
    @movies = Movie.paginate(page: params[:page] ,per_page: 10)
  end

  def new
    @movie = Movie.new
    @genres = Genre.all
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
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
      params.require(:movie).permit(:title, :movie_poster, :movie_background_poster, :short_desc, :full_desc, :isMovie3D)
    end
end