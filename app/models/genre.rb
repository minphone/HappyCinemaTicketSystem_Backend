class Genre < ApplicationRecord

  has_many :genre_movies
  has_many :movies, through: :genre_movies
  
  validates :genre_name, presence: true,
            uniqueness: { case_sensitive: false, message: "%{value} is already existed!"},
            length: { minimum: 5, maximum: 100 }

  validates :genre_description, length: { maximum: 300 }

end