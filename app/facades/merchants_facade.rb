class MerchantsFacade

  def self.return_merchants
    parsed_json = MerchantsService.all_merchants
    parsed_json[:data].map do |merch|
      Merchant.new(merch)
    end
  end

  def self.find_merchant(id)
    parsed_json = MerchantsService.all_merchants
    parsed_json[:data].each do |merch|
      if merch[:id] == id
        @m = Merchant.new(merch)
      end
    end
    @m
  end
end