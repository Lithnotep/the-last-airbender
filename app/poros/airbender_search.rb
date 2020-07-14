class AirbenderSearch

  def characters(affiliation)
    service = AirbenderService.new
    json = service.get_json("characters?affiliation=#{affiliation}")
    json.map do |data|
      Character.new
    end
  end
end
