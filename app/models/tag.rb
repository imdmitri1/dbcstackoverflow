class Tag < ActiveRecord::Base
  has_many :question_tags

  validates :name, { presence: true }
  validates :name, length: { maximum: 256 }
  validates :name, uniqueness: true

end
