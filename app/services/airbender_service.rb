class AirbenderService

  def conn
    Faraday.new(url: "https://last-airbender-api.herokuapp.com/api/v1") do |faraday|
    faraday.adapter Faraday.default_adapter
    end
  end

  def get_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end
