When("I visit the site") do
    visit root_path
end

Given("the following user exists") do |table|
  table.hashes.each do |user|
    user = create(:user, user)
  end
end

Given("visit Sign up page") do
  visit new_user_registration_path
end


Given("I am logged in as {string}") do |email|
  @user = User.find_by email: email
  login_as @user, scope: :user
  visit root_path
end

When("I fill in {string} with {string}") do |element, value|
  fill_in element, with: value
end

When("I click {string}") do |element|
  click_on element
end
<<<<<<< HEAD

Then("I am on Sign up page") do
  expect(current_path).to eq new_user_registration_path
end
  
  
=======
>>>>>>> c2d118bea9106d9ceb5287e3fa2f851a8b39eca1
