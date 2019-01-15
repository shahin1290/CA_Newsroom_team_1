When("I visit the site") do
  visit root_path
end

Given("I visit the create article page") do
  visit new_cms_article_path
end

When('I fill in {string} with {string}') do |field, input|
  fill_in field, with: input
end

When('I click on {string}') do |link|
  click_on link
end

Then("I should be on index page") do
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

When("I click {string}") do |element|
  click_on element
end

Then("I am on Sign up page") do
  expect(current_path).to eq new_user_registration_path
end