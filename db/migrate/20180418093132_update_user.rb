class UpdateUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :profileUrl, :string
  end
end
