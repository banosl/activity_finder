require 'rails_helper'

RSpec.describe Activity do
  it "activity exists and has attributes" do
    activity = Activity.new({activity: "Learn how to fold a paper crane", type: "education", price: 0.1, participants: 3})

    expect(activity).to be_instance_of(Activity)
    expect(activity.name).to eq("Learn how to fold a paper crane")
    expect(activity.type).to eq("education")
    expect(activity.price).to eq(0.1)
    expect(activity.participants).to eq(3)
  end

  it "returns a price visual" do
    activity = Activity.new({activity: "Learn how to fold a paper crane", type: "education", price: 0.1, participants: 3})
    expect(activity.priciness).to eq("$")

    activity = Activity.new({activity: "Learn how to fold a paper crane", type: "education", price: 0.65, participants: 3})
    expect(activity.priciness).to eq("$$")

    activity = Activity.new({activity: "Learn how to fold a paper crane", type: "education", price: 0.95, participants: 3})
    expect(activity.priciness).to eq("$$$")
  end
end