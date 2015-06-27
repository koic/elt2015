class ChangeExhibitsUserIdColumn < ActiveRecord::Migration
  class Exhibit < ActiveRecord::Base; end
  class User < ActiveRecord::Base; end

  def change
    reversible do |dir|
      dir.up do
        Exhibit.all.each do |exhibit|
          exhibit.update_attribute(:user_id, User.first.id)
        end
      end
    end

    change_column :exhibits, :user_id, :integer, null: false
  end
end
