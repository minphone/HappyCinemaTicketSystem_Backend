class DropPhoto < ActiveRecord::Migration[5.1]
  def change
    drop_table :Photos
  end
end
