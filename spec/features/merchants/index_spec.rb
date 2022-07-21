require 'rails_helper'

describe 'Merchants Index page' do
  it 'can display a list of merchants by name' do
    visit '/merchants'

    expect(page).to have_content("Schroeder-Jerde")
    expect(page).to have_content("Glover Inc")
  end

  it 'can click a merchants name and be taken to their show page' do
    visit '/merchants'

    click_link 'Schroeder-Jerde'
    expect(current_path).to eq('/merchants/1')
  end
end