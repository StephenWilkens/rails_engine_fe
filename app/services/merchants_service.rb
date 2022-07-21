 class MerchantsService
  def self.all_merchants
    response = conn.get('/api/v1/merchants')

    data = JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    url = 'http://localhost:3000'
    Faraday.new(url)
  end
end