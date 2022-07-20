require 'rails_helper'

describe 'Merchants Index page' do
  it 'can display a list of merchants by name' do
    visit '/merchants'
    expect(page).to have_content(MERCHANTNAMES)
    click_link "MERCHANTNAME"
    expect(current_path).to eq("/merchants/MERCHID")
    expect(page).to have_content(WHATMERCHANTSELL)
  end
end