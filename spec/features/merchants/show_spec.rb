require 'rails_helper'

RSpec.describe 'Merchants Show page' do
  it 'can list all the Merchants Items' do
    visit '/merchants/1'
    expect(page).to have_content("Item Expedita Fuga")
  end
end