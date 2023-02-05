require 'rails_helper'

RSpec.describe "Activity Service" do
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