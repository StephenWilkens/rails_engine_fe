class MerchantsController < ApplicationController
  def index
    require "pry"; binding.pry
    #MerchantsFacade.get_merchants(params)
  end
end