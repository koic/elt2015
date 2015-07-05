class Exhibit < ActiveRecord::Base
  belongs_to :user
  has_many :votes

  validates :title, presence: true
  validates :type,  presence: true
  validates :description, length: {maximum: 30}
end
