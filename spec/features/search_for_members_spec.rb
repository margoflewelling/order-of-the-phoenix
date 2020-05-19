require 'rails_helper'


feature "user can search for members of a house that are in the ootp" do

  it " can search for griffindor members" do
    visit '/'

    select 'Gryffindor', from: :house
    click_on 'Search For Members'

    expect(current_path).to eq(search_path)
    expect(page).to have_content("Griffindor: 21 Order of the Phoenix Members")

    expect(page).to have_css(".member", count: 7)
    within(first(".member")) do
      expect(page).to have_content(".name")
      expect(page).to have_css(".house")
    end
  end
end


# As a user,
# When I visit "/"
# And I Select “Gryffindor” from the select field
# (Note: Use the existing select field)
# And I click "Search For Members“
# Then I should be on page “/search”
# Then I should see the total number of the order of the phoenix members that belong to Gryffindor. (i.e. 21)
# And I should see a list with the detailed information for the 21 members of the Order of the Phoenix for house Gryffindor.
#
# And for each of the members I should see:
# - The name of the member
# - The members role (if it exists)
# - The house the member belongs to
# - The Patronus of the member (if it exists)
