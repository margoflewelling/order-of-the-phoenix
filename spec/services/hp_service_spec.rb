require 'rails_helper'

describe HarryPotterService do
  context "instance methods" do
    context "#get_from_house" do
      it "returns wizard info" do
        hp = HarryPotterService.new
        search = hp.get_from_house("Slytherin")
        expect(search).to be_a Array
        wizard_data = search.first

        expect(wizard_data).to have_key :name
        expect(wizard_data).to have_key :house
      end
    end
  end
end
