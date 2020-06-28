class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :category, null: false
      t.text :name, null: false
      t.text :notes
      t.text :product_image_url
      t.integer :rating

      t.belongs_to :profile, index: true
    end
  end
end
