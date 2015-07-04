class DropTableSakes < ActiveRecord::Migration
  def up
    drop_table :sakes
  end

  def down
    create_table :sakes do |t|

      t.timestamps null: false
    end
  end
end
