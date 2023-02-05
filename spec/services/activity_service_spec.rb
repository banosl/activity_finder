require 'rails_helper'

RSpec.describe ActivityService do
  describe 'random_activity_by_participants' do
    before :each do
      random_activity_by_participants_stub(3)
    end
    it 'can generate a random activity' do
      response = ActivityService.get_random_activity_by_participants(3)

      expect(response).to be_a(Hash)
      expect(response).to have_key(:activity)
      expect(response).to have_key(:type)
      expect(response).to have_key(:participants)
      expect(response).to have_key(:price)
      expect(response).to have_key(:accessibility)
      expect(response).to have_key(:key)
    end
  end
end