class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    t.string :title, { null: false, limit: 64 }
    t.string :body, { null: false }
    t.integer :author_id

    t.timestamps
  end
end
