class AirbenderService

  def conn
    Faraday.new(url: "https://last-airbender-api.herokuapp.com/") do |faraday|
    faraday.params
    end
  end

  def get_json(params)
    binding.pry
    response = conn.get(params)
    JSON.parse(response.body, symbolize_names: true)
  end
end
