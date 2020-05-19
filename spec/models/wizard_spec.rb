require "rails_helper"

describe Wizard do
  it "exists" do
    attrs = {
      name: "Frank Longbottom",
      house: "Gryffindor",
      role: "Resident at St Mungo's"
    }

    wizard = Wizard.new(attrs)

    expect(wizard).to be_a Wizard
    expect(wizard.name).to eq("Frank Longbottom")
    expect(wizard.role).to eq("Resident at St Mungo's")
    expect(wizard.house).to eq("Gryffindor")
  end
end
