class CreateMoviesGenerJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :movies, :genres do |t|
      t.index [:movie_id, :genre_id]
    end
  end
end
