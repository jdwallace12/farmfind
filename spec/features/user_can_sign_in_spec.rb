require "spec_helper"

feature "user will login" do

  let!(:user){ FactoryGirl.create(:user) }

scenario "user already has account, wants to login" do
  visit(root_path)
  within(".sign-in") do
  click_link("Sign In")
  end
  fill_in 'Email', :with => user.email
  fill_in 'Password', :with => user.password
  click_button("Sign in")
  expect(page).to have_content("Signed in successfully")
  end
end
