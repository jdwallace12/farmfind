require "spec_helper"

feature "user will logout" do

  let!(:user){ FactoryGirl.create(:user) }

  scenario "user already signed in, wants to logout" do
    sign_in_as user
    click_link "Submit Your Farm"
  end
end
