class CreateLightningTalks < ActiveRecord::Migration
  def change
    create_table :lightning_talks do |t|

      t.timestamps null: false
    end
  end
end
