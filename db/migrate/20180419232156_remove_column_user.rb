class RemoveColumnUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :facebook_id
  end
end
