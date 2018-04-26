class Api::V1::MoviesController < Api::V1::BaseController
  def index
    movies = Movie.paginate(page: params[:page] ,per_page: 10)
    render json: movies.as_json
  end
end