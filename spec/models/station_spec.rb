require 'rails_helper'

RSpec.describe Station, :type => :model do

  describe  "creating a new station"  do

    it " creates a new station with a name" do
      Line.create(:name=> 'Red')
      visit '/stations/new'
      fill)in 'Name', with => '5th and Oak'
      check('Red')
      visit'/lines/new'
      click_button 'Create Station'
    expect(page).to have_content '5th and Oak'
    end


    it "creates a line when there are no liness/stops" do
      visit'/stations/new'
      fill_in 'Name', :with=> '5th and Oak'
      click_button 'Create Station'
    expect(page).to have_content '5th and Oak'
    end

  end
end
