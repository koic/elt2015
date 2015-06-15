class CreateSakes < ActiveRecord::Migration
  def change
    create_table :sakes do |t|

      t.timestamps null: false
    end
  end
end
