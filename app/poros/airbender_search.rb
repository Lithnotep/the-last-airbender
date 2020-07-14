class AirbenderSearch

  def characters(affiliation)
    service = AirbenderService.new
    json = service.get_json("characters?affiliation=#{affiliation}")
    json.map do |data|
        binding.pry
      Character.new(data)
    end
  end

end
