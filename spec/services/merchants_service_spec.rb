require 'rails_helper'

RSpec.describe 'Merchants Service' do
  context 'happy path' do
    it 'retrieves data and pareses the response' do

      parsed_json = MerchantsService.all_merchants

      expect(parsed_json[:data]).to be_an(Array)
      merchant = parsed_json[:data].first
      expect(merchant).to include :id, :type, :attributes
      expect(merchant[:attributes]).to include :name

      expect(merchant[:id]).to be_a(String)
      expect(merchant[:attributes][:name]).to be_a(String)


    end
  end
end