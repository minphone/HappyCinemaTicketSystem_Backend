class CreateAvator < ActiveRecord::Migration[5.1]
  def change
    create_table :avators do |t|
      t.string :image
    end
  end
end
