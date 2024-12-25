class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.references :user, null: false, foreign_key: true
      t.text :content
      t.text :answer
      t.datetime :asked_at

      t.timestamps
    end
  end
end
