class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :title, { null: false, limit: 256, unique: true }
      t.string :question_body, { null: false }
      t.integer :author_id
      t.integer :views, default: 0
      t.integer :best_answer_by_author

      t.timestamps
    end
  end
end
