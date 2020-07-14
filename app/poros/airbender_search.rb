class AirbenderSearch

  def characters(affiliation)
    service = AirbenderService.new
    json = service.get_json("characters?affiliation=#{affiliation}")
    json.map do |data|
      Character.new(data[:_id], data[])
    end
  end
end
# "_id": "5cf5679a915ecad153ab68c8",
# "allies": [
#     "Royal Earthbender Guards"
# ],
# "enemies": [
#     "Chin"
# ],
# "photoUrl": "https://vignette.wikia.nocookie.net/avatar/images/5/51/46th_Earth_King.png/revision/latest?cb=20130627160441",
# "name": "46th Earth King",
# "affiliation": " Earth Kingdom Earth Kingdom Royal Family"
