class AirbenderSearch

  def characters
    service = AirbenderService.new
    json = service.repo_json(user)
    json.map do |data|
      Character.new(data["name"], data["url"])
    end
  end
end
