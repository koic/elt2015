class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :exhibit, counter_cache: true

  validates :user_id, presence: true
  validates :exhibit_id, presence: true, uniqueness: {scope: %i(user_id)}
  validates :comment, length: {maximum: 40}
end
