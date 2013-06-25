require "spec_helper"

feature "a user not logged in tries to visit the farm index page" do

  scenario "user clicks view farm when they are not logged in or the current user" do
    visit farms_path
    expect(page).to have_content("x You need to sign in or sign up before continuing. Sign in Email Password Remember me Sign upForgot your password?")
  end
end
