class Question < ActiveRecord::Base
  validates :title, :body, { presence: true }
  validates :title, length: { maximum: 64 }

  belongs_to :author_id, class_name: "User"
  # comment
end
