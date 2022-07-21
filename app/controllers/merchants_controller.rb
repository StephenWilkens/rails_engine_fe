class MerchantsController < ApplicationController
  def index
    @merchants = MerchantsFacade.return_merchants
  end

  def show
    @merchant = MerchantsFacade.find_merchant(params[:id])
    @items = ItemsFacade.merchants_items(params[:id])
  end
end