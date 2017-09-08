class Vote < ActiveRecord::Base
  belongs_to :votable, polymorphic: true
  belongs_to :voter, class_name: 'User'

  validates_presence_of :value, :voter_id

  def self.total_value
    self.all.map(&:value).reduce(:+)
    # self.all.sum(:value)
  end
end
