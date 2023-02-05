require 'rails_helper'

RSpec.describe ActivitySearchFacade do
  before :each do
    random_activity_by_participants_stub(3)
  end
  it 'can return one activity object' do
    activity = ActivitySearchFacade.search_activity(3)

    expect(activity).to be_instance_of(Activity)
    expect(activity.participants).to eq(3)
  end
end