class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :exhibit
  validates :exhibit_id, uniqueness: {scope: %i(user_id)}
end
