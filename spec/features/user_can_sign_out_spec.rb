require "spec_helper"

feature "user will logout" do

  let!(:user){ FactoryGirl.create(:user) }

scenario "user already signed in, wants to logout" do
  visit(root_path)
  click_link("Sign In")
  fill_in 'Email', :with => user.email
  fill_in 'Password', :with => user.password
  click_button("Sign in")
  click_link("Logout")
  expect(page).to have_content("Signed out successfully")
  end
end
