require "rails_helper"
describe 'A affiliation' do
  it 'can see all affiliated characters' do
    search = AirbenderSearch.new
    visit "/"
    select "Fire Nation"
    click_button 'Search For Members'
    expect(page).to have_content("Azula")
  end
end
