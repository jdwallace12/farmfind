require "spec_helper"

feature "user can change password" do 

  scenario "user creates an account and changes password" do 
    visit(root_path)
    click_link ("Sign Up")
    fill_in 'Email', :with => 'blah@blah.com'
    fill_in 'Password', :with => '12345678' 
    fill_in 'Password confirmation', :with => '12345678'
    click_button ("Sign up")
    click_link ("Edit Profile")
    fill_in 'Email', :with => 'blah@blah.com'
    fill_in 'Password', :with => '12345679'
    fill_in 'Password confirmation', :with => '12345679'
    fill_in 'Current password', :with => '12345678'
    click_button ("Update")
    expect(page).to have_content("You updated your account successfully.")
  end
end
