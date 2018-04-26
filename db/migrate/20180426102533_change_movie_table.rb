class ChangeMovieTable < ActiveRecord::Migration[5.1]
  def change
    change_column :movies, :isMovie3D , :boolean , default: false
  end
end
