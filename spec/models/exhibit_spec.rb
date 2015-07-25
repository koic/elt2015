require 'rails_helper'

RSpec.describe Exhibit, type: :model do
  describe 'by_rank' do
    subject { Food.by_rank }

    let!(:food_meat)   { create(:food, title: 'meat') }
    let!(:food_fish)   { create(:food, title: 'fish') }
    let!(:food_potato) { create(:food, title: 'potato') }

    before do
      create(:vote, exhibit_id: food_meat.id)

      create(:vote, exhibit_id: food_potato.id)
      create(:vote, exhibit_id: food_potato.id)

      create(:vote, exhibit_id: food_fish.id)
      create(:vote, exhibit_id: food_fish.id)
      create(:vote, exhibit_id: food_fish.id)
    end

    it '投票数の多い順に並ぶ' do
      expect(subject[0].id).to eq(food_fish.id)
      expect(subject[1].id).to eq(food_potato.id)
      expect(subject[2].id).to eq(food_meat.id)
    end
  end
end
