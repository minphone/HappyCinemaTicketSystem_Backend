class DropTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :genres_movies
  end
end
