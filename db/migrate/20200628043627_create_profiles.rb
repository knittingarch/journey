class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :name, null: false
      t.string :hair_state
      t.date :big_chop_date
      t.string :hair_type
      t.date :hair_goal_date
      t.string :hair_length_goal
      t.string :measurement_type
      t.text :profile_img_url

      t.timestamps
    end
  end
end
