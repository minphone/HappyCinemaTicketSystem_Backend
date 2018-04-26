class CreateGenresMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :genre_movies do |t|
      t.integer :movie_id
      t.integer :genre_id
    end
  end
end
