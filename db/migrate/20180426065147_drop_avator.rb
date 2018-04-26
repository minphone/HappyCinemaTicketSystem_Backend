class DropAvator < ActiveRecord::Migration[5.1]
  def change
    drop_table :avators
  end
end
