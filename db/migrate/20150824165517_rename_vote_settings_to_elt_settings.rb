class RenameVoteSettingsToEltSettings < ActiveRecord::Migration
  def change
    rename_table :vote_settings, :elt_settings
  end
end
