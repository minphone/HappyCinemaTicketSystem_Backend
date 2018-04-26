class CreateTest < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :image
    end
  end
end
