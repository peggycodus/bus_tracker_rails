require 'rails_helper'

RSpec.describe  "creating a new line"  do

  it " creates a new line with a name" do
    Station.create(:name=>'5th and Oak')
    visit'/lines/new'
    fill_in 'Name', :with=> 'Red'
    check ('5th and Oak')
    click_button 'Create Line'
  expect(page).to have_content 'Red'
  end

  it "creates a line when there are no stations/stops" do
    visit'/lines/new'
    fill_in 'Name', :with=> 'Red'
    click_button 'Create Line'
  expect(page).to have_content 'Red'
  end

end
