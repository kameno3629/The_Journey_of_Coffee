class CreateCoffees < ActiveRecord::Migration[6.1]
  def change
    create_table :coffees do |t|
      t.string :name, null: false
      t.string :bean_type
      t.string :brew_method
      t.integer :acidity, default: 0
      t.integer :bitterness, default: 0
      t.integer :smoothness, default: 0
      t.integer :sweetness, default: 0
      t.integer :aroma, default: 0
      t.integer :aftertaste, default: 0
      t.integer :body, default: 0
      t.string :country
      t.string :region
      t.integer :drink_count, default: 0

      t.timestamps
    end
  end
end
