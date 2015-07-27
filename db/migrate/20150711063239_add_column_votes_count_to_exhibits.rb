class AddColumnVotesCountToExhibits < ActiveRecord::Migration
  def change
    add_column :exhibits, :votes_count, :integer, default: 0
  end
end
