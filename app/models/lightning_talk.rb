class LightningTalk < Exhibit
  belongs_to :user

  scope :announce_order, ->{ order(position: :asc) }
end
