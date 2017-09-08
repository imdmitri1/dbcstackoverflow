class User < ActiveRecord::Base
  has_many  :questions, foreign_key: :author_id
  has_many :answers, foreign_key: :answerer_id
  has_many :comments, foreign_key: :commenter_id
  has_many :votes, foreign_key: :voter_id
  has_many :recieved_answers, through: :questions

  validates_presence_of :name, :email, :h_password
  validates_uniqueness_of :email

  # def profile_picture
      # Pseudo: when the user is instantiated (?) the user
        # profile picture could be set to Faker::Avatar.image
        # by default (mostly b/c we don't have option to add img)
      # Something to this effect, anyway.
  # end

  def password
    @password ||= BCrypt::Password.new(h_password)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.h_password = @password
  end

  def authenticate(email, password)
    self.password == password && self.email == email
  end

end
