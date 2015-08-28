class AddSlideUrlToExhibits < ActiveRecord::Migration
  def change
    add_column :exhibits, :slide_url, :string
  end
end
