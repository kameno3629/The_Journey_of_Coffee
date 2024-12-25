class CreateUserRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :user_ratings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :coffee, null: false, foreign_key: true
      t.integer :overall_rating
      t.integer :drink_count, default: 0
      t.date :last_drank_on
      t.text :note

      t.timestamps
    end
  end
end
