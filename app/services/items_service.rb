class ItemsService
  def self.get_merchants_items(id)
    response = conn.get("/api/v1/merchants/#{id}/items")

    data = JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    url = 'http://localhost:3000'
    Faraday.new(url)
  end
end