class Exhibit < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true
  validates :type,  presence: true
end
