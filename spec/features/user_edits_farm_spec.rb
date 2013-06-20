require 'spec_helper'

describe "user edits a farm" do
  let(:user) { FactoryGirl.create(:user) }
  let(:farm) { FactoryGirl.create(:farm, user: user) }
  let(:other_farm) { FactoryGirl.create(:farm) }

  it "A user edits their own farm" do
    sign_in_as user
    visit edit_farm_path(farm)
    fill_in "farm_share_description", with: "2nd rate beets"
    click_button "Update Farm"
    expect(farm.reload.share_description).to eql("2nd rate beets")
  end
  
  it "A uses can not edit some one elses farm" do
    sign_in_as user
    visit edit_farm_path(other_farm)
    expect(page).to have_content("You can't edit farms that don't belong to you.")
  end
end
