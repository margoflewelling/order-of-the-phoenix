class SearchResults
  def get_wizard(house)
    hp = HarryPotterService.new
    json = hp.order_of_the_phoenix_members(house)
    @wizards = json.map do |wizard_hash|
      Wizard.new(wizard_hash)
    end
    @wizards
  end
end
