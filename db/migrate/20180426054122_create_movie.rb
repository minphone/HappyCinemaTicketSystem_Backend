class CreateMovie < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :movie_poster
      t.string :movie_background_poster
      t.string :short_desc
      t.string :full_desc
      t.boolean :isMovie3D
    end
  end
end
