class Movie < ApplicationRecord

  has_many :genre_movies
  has_many :genres, through: :genre_movies

  validates :title, presence: true
  validates :short_desc, presence: true

  mount_uploader :movie_poster, ImageUploader
  mount_uploader :movie_background_poster, ImageUploader

  def as_json(options={})
    super.as_json(options).merge({genres: get_genre})
  end

  def get_genre
    self.genres
  end
  
end