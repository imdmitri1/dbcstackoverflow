class Question < ActiveRecord::Base
  validates :title, :question_body, { presence: true }
  validates :title, length: { maximum: 64 }

  belongs_to :author_id, class_name: "User"
  has_many :votes, as: :votable
end
