class ItemsFacade

  def self.merchants_items(id)
    parsed_json = ItemsService.get_merchants_items(id)
    parsed_json[:data].map do |item|
      Item.new(item)
    end
  end
end