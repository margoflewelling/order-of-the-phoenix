class SearchResults
  def get_members(house)
    hp = HarryPotterService.new
    json = hp.get_from_house(house)
    @wizards = json.map do |wizard_hash|
      Wizard.new(wizard_hash)
    end
    @wizards
  end
end
