require "spec_helper"


  feature "user with a farm creates and sees their farm on the farm index page" do

    let(:user) { FactoryGirl.create(:user) }
    let(:farm) { FactoryGirl.create(:farm, user: user) }

    scenario "user can create farm" do
      sign_in_as user
      create_farm
      expect(user.farms.count).to eql(1)
    end

    scenario "user clicks view farm and directed to index page of their farm(s)" do
      sign_in_as user
      click_link "View Your Farm"
      expect(user.farms.count).to eql(1)
    end
   

    def create_farm
      name = "Zopf's Beets and Beers"
      click_link "Add Your Farm"
      fill_in "farm_name", with: name
      fill_in "farm_farm_description", with: "world class beets"
      select("organic", from: "farm_certification")
      fill_in "farm_address", with: "15 Hilltop Road"
      fill_in "farm_city", with: "Sudbury"
      fill_in "farm_state", with: "MA"
      fill_in "farm_phone_number", with: "1-800-BEEEEETS"
      fill_in "farm_website", with: "www.zopfbeets"
      fill_in "farm_number_of_shares", with: "500"
      fill_in "farm_share_price", with: "$9"
      fill_in "farm_share_description", with: "You get beeted"

      click_button "Create Farm"
      expect(Farm.find_by_name(name)).to_not be_nil
    end

  end
