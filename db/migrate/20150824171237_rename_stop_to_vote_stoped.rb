class RenameStopToVoteStoped < ActiveRecord::Migration
  def change
    rename_column :elt_settings, :stop, :vote_stoped
  end
end
