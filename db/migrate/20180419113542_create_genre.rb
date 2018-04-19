class CreateGenre < ActiveRecord::Migration[5.1]
  def change
    create_table :genres do |t|

      t.string :genre_name
      t.string :genre_description

    end
  end
end
