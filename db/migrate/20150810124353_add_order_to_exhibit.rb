class AddOrderToExhibit < ActiveRecord::Migration
  def change
    add_column :exhibits, :announce_number, :integer
    add_index  :exhibits, :announce_number, unique: true
  end
end
