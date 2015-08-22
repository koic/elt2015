class CreateVoteSettings < ActiveRecord::Migration
  def change
    create_table :vote_settings do |t|
      t.boolean :stop, null: false, default: false

      t.timestamps null: false
    end
  end
end
