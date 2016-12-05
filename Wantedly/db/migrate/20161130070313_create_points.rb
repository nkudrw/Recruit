class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.string :user_id
      t.integer :skill_id

      t.timestamps null: false
    end
  end
end
