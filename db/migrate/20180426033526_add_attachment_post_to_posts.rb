class AddAttachmentPostToPosts < ActiveRecord::Migration[5.1]
  def self.up
    change_table :posts do |t|
      t.attachment :post
    end
  end

  def self.down
    remove_attachment :posts, :post
  end
end
