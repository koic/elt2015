class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :exhibit

  validates :user_id, presence: true
  validates :exhibit_id, presence: true
end
