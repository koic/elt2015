class AddCommentColumnToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :comment, :string, limit: 40
  end
end
