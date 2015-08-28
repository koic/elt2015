class AddResultsOpenedToEltSettings < ActiveRecord::Migration
  def change
    add_column :elt_settings, :results_opened, :boolean, null: false, default: false
  end
end
