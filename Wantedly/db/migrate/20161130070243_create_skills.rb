class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.integer :point_count, null: false, default: 0

      t.timestamps null: false
    end
  end
end
