class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.string :answer_body, { null: false }

      t.timestamps
    end
  end
end
