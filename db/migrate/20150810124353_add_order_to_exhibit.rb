class AddOrderToExhibit < ActiveRecord::Migration
  def change
    add_column :exhibits, :position, :integer
    add_index  :exhibits, :position, unique: true
  end
end
