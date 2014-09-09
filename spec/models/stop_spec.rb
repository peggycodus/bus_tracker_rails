require 'rails_helper'

  describe "creating a new stop" do
    it"creates a new stop with a station and line" do
      Station.create(:name=>'5th and Oak')
      Line.create(:name=>'Red')
      visit'/stops/new'
      select('5th and Oak')
      select('Red')
      click_button'Create Stop'
      expect(page).to have_content'5th and Oak'
    end
  end
