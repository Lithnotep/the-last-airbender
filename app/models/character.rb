class Character
  attr_reader :id, :allies, :enemies, :photo, :name, :affiliation
  def initialize(data)
    @id = data[:_id]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @photo = data[:photoUrl]
    @name = data[:name]
    @affiliation = data[:affiliation]
  end
end
