class Question < ActiveRecord::Base
  validates :title, :question_body, { presence: true }
  validates :title, length: { maximum: 256 }

  belongs_to :author, class_name: "User"
  has_many :votes, as: :votable
  has_many :comments, as: :commentable
  has_many :answers

  def self.add_view_count
    self.views +=1
  end
end
