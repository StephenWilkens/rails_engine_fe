require 'rails_helper'

RSpec.describe 'Merchants Facade' do

  it 'makes service call and returns an array of merchant objects' do
    merchants = MerchantsFacade.return_merchants

    expect(merchants).to be_an(Array)
    expect(merchants).to be_all(Merchant)
  end
end