class Exhibit < ActiveRecord::Base
  belongs_to :user
  has_many :votes, dependent: :destroy

  validates :title, presence: true, length: {maximum: 20}
  validates :type,  presence: true
  validates :description, length: {maximum: 40}

  # NOTE ランキングに表示する最低票数 この数値以上の票を集めたもののみ表示する
  RANK_BORDER_NUM = 3.freeze
  scope :by_rank, ->{ order(votes_count: :desc).where(arel_table[:votes_count].gteq RANK_BORDER_NUM ) }
end
