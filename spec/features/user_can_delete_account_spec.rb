require "spec_helper"

feature "user can delete account" do 

  scenario "user creates and deletes an account" do 
    visit(root_path)
    click_link ("Sign Up")
    fill_in 'Email', :with => 'blah@blah.com'
    fill_in 'Password', :with => '123234as53' 
    fill_in 'Password confirmation', :with => '123234as53'
    click_button ("Sign up")
    click_link ("Edit Profile")
    click_button ("Cancel my account")
    expect(page).to have_content("Bye! Your account was successfully cancelled. We hope to see you again soon.")
  end
end
