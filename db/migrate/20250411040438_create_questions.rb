class CreateQuestions < ActiveRecord::Migration[8.0]
  def change
    create_table :questions do |t|
      t.integer :age
      t.integer :weight
      t.string :gender
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
