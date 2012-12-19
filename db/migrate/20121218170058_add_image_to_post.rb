class AddImageToPost < ActiveRecord::Migration
  def change
    if ActiveRecord::Base.connection.adapter_name == 'Mysql2'
      add_column :posts, :image, :blob
    else
      add_column :posts, :image, :image
    end
  end
end