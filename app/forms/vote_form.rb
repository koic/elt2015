class VoteForm < ApplicationForm
  validates :user_id, presence: true
  validates :exhibit_id, presence: true
  validates :comment, length: {maximum: 40}

  validate :user_must_vote_only_once_each_exhibit
  validate :user_must_not_vote_own_exhibits

  attr_accessor :exhibit_id, :user_id, :comment

  private

  def user_must_vote_only_once_each_exhibit
    errors.add(:exhibit_id, :duplicated_vote, exhibit: Exhibit.find(exhibit_id).title) if Vote.exists?(user_id: user_id, exhibit_id: exhibit_id)
  end

  def user_must_not_vote_own_exhibits
  end

  def persist!
    vote = User.find(user_id).votes.new(exhibit_id: exhibit_id, comment: comment)
    vote.save!
  end
end
