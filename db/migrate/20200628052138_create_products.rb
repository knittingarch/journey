class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :category
      t.text :name, null: false
      t.text :notes
      t.integer :rating

      t.timestamps
    end
  end
end
