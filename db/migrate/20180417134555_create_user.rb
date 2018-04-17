class CreateUser < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|

      t.string      :username
      t.string      :username
      t.integer     :gender
      t.references  :region, foreign_key: true

    end
  end
end
