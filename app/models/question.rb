class Question < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  has_many :votes, as: :votable
  has_many :comments, as: :commentable
  has_many :answers
  has_many :question_tags

  validates :title, :question_body, { presence: true }
  validates :title, length: { maximum: 256 }

  def add_view_count
    self.views +=1
  end
end
