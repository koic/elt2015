class LightningTalk < Exhibit
  belongs_to :user

  scope :announce_order, ->{ order(announce_number: :asc) }
end
