When("I visit the site") do
  visit root_path
end

Given("I visit the create article page") do
  visit new_article_path
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

Given("I am logged in as {string}") do |email|
  @user = User.find_by email: email
  login_as @user, scope: :user
  visit root_path
end

When("I fill in {string} with {string}") do |element, value|
  fill_in element,with: value
end

When("I click {string}") do |element|
  click_on element
end
