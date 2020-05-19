class HarryPotterService

  def get_from_house(house)
    search = Faraday.get("https://www.potterapi.com/v1/characters?house=#{house}&orderOfThePhoenix=true") do |f|
      f.params['key'] = ENV['HP_KEY']
    end
    json = JSON.parse(search.body, symbolize_names: true)
    json
  end

end
