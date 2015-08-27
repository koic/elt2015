class IntegerToStringInExhibitsAnnounceNumber < ActiveRecord::Migration
  def up
    # NOTE: 既存データ対応するコストもったいないのでいったん削除
    remove_column :exhibits, :announce_number
    add_column :exhibits, :announce_number, :string
    add_index  :exhibits, :announce_number, unique: true
  end

  def down
    remove_column :exhibits, :announce_number
    add_column :exhibits, :announce_number, :integer
    add_index  :exhibits, :announce_number, unique: true
  end
end
