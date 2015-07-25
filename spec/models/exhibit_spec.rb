require 'rails_helper'

RSpec.describe Exhibit, type: :model do
  describe 'by_rank' do
    subject { Food.by_rank }

    let!(:food_meat)   { create(:food, title: 'meat') }
    let!(:food_fish)   { create(:food, title: 'fish') }
    let!(:food_potato) { create(:food, title: 'potato') }
    let!(:food_sake)   { create(:food, title: 'sake') }

    before do
      2.times { create(:vote, exhibit_id: food_meat.id) }
      3.times { create(:vote, exhibit_id: food_potato.id) }
      4.times { create(:vote, exhibit_id: food_fish.id) }
      5.times { create(:vote, exhibit_id: food_sake.id) }
    end

    it '投票数の多い順に並ぶ' do
      expect(subject[0].id).to eq(food_sake.id)
      expect(subject[1].id).to eq(food_fish.id)
      expect(subject[2].id).to eq(food_potato.id)
    end

    it '2票以下はランキングに含まれない' do
      expect(subject).not_to be_include(food_meat)
    end
  end
end
