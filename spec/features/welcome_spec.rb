require 'rails_helper'

RSpec.describe "Welcome Page" do 
    describe "visiting '/'" do
        before :each do
            party_size = 3
            random_activity_by_participants_stub(party_size)
        end
        it 'has a form to search for activities' do 
            visit root_path
            
            expect(page).to have_content("Activity Finder")
            expect(page).to have_field(:num_participants)
            expect(page).to have_button("Find Activities")
        end

        it 'takes user to /activity after clicking Find Something To do' do
            visit root_path

            fill_in :num_participants, with: 3
            click_on "Find Activities"

            expect(current_path).to eq('/activity')
        end

        it 'user sees a description of suggested activity, the number of participants for the activity, and a visual of how pricey that activity would be'do
            visit root_path

            fill_in :num_participants, with: 3
            click_on "Find Activities"

            expect(page).to have_content("Activity: Bake a pie with some friends")
            expect(page).to have_content("Participants: 3")
            expect(page).to have_content("Price: $")
        end
    end
end 