class RenameNameToNickname < ActiveRecord::Migration
  def change
    rename_column :users, :name, :nickname

    change_column :users, :nickname, :string, null: false
  end
end
