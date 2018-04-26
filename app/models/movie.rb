class Movie < ApplicationRecord

  has_and_belongs_to_many :genres

  validates :title, presence: true
  validates :short_desc, presence: true
  validates :isMovie3D, presence: true

  mount_uploader :movie_poster, ImageUploader
  mount_uploader :movie_background_poster, ImageUploader
  
end