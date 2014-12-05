feature 'Signing up' do
  scenario 'Successful sign up' do
    visit '/'
    click_link 'Sign Up'
    fill_in "Name", with: "Larin"
    fill_in "Email", with: "larin@gmail.com"
    fill_in "Password", with: "password"
    click_button "Create User"
    
    expect(page).to have_content("User was successfully created.")
  end
end