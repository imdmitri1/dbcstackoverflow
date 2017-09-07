class CreateVotes < ActiveRecord::Migration[5.1]
  def change
      create_tabel :votes do |t|
      t.string :votable_type
      t.integer :votable_id
      t.integer :value
      t.integer :voter_id

      t.timestamps
    end
  end
end
