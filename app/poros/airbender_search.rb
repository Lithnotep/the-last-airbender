class AirbenderSearch

  def characters
    service = AirbenderService.new
    json = service.get_json("characters?affiliation=Fire Nation")
    json.map do |data|
      Character.new(data)
    end
  end

end
