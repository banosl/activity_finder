require 'rails_helper'

RSpec.describe "Welcome Page" do 
    describe "visiting '/'" do
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

        it 'user sees a description of suggested activity, the number of participants for the activity, and a visual of how pricey that activity would be'
    end
end 