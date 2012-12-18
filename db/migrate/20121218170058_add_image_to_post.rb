class AddImageToPost < ActiveRecord::Migration
  def change
    add_column :posts, :image, :image
  end
end
