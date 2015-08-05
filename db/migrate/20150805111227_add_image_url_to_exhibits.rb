class AddImageUrlToExhibits < ActiveRecord::Migration
  def change
    add_column :exhibits, :image_url, :string
  end
end
