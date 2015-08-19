require 'rails_helper'

RSpec.describe LightningTalk, type: :model do
  describe 'announce_order' do
    subject { LightningTalk.announce_order }

    let!(:lt_bar)  { create(:lightning_talk, title: 'bar', announce_number: 2) }
    let!(:lt_piyo) { create(:lightning_talk, title: 'piyo', announce_number: 4) }
    let!(:lt_foo)  { create(:lightning_talk, title: 'foo', announce_number: 1) }
    let!(:lt_baz)  { create(:lightning_talk, title: 'baz', announce_number: 3) }

    it '発表順の数値の昇順で表示される' do
      expect(subject[0].id).to eq lt_foo.id
      expect(subject[1].id).to eq lt_bar.id
      expect(subject[2].id).to eq lt_baz.id
      expect(subject[3].id).to eq lt_piyo.id
    end
  end
end
