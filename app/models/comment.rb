class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true
  belongs_to :commenter, class_name: 'User'
  has_many :votes, as: :votable
  # has_many :comments

  validates_presence_of :comment_body, :commenter_id

end
