require 'rails_helper'

RSpec.describe Exhibit::VotesController, type: :controller do
  let(:user) { FactoryGirl.create(:user, :sherlock) }

  before do
    allow(controller).to receive(:current_user).and_return(user)
  end

  describe 'GET #new' do
    it '正常にアクセスできること' do
      get :new
      expect(response.status).to eq 200
    end
  end

  describe 'POST #create' do
    let(:irene) {FactoryGirl.create(:user, :irene)}
    let(:food) {FactoryGirl.create(:food, user_id: irene.id)}

    before do
      @params = {exhibit_id: food.id}
    end

    context 'POST #create' do
      it '対象物の得票数が増えること' do
        expect(food.votes.count).to eq 0

        expect{
          post :create,  vote: @params
        }.to change(food.votes, :count).by(1)
      end
    end
  end
end
