class AddProductToProfile < ActiveRecord::Migration[6.0]
  def change
    change_table :profiles do |t|
      t.references :product, index: true
    end
  end
end
