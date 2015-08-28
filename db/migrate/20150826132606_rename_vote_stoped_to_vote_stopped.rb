class RenameVoteStopedToVoteStopped < ActiveRecord::Migration
  def change
    rename_column :elt_settings, :vote_stoped, :vote_stopped
  end
end
