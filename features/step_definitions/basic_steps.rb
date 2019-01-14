Given("the following user exists") do |table|
  table.hashes.each do |user|
    user = create(:user, user)
  end
end

Given("I visit the site") do
  visit root_path
end

Given("visit Sign up page") do
  visit new_user_registration_path
end


When("I fill in {string} with {string}") do |element, value|
  fill_in element,with: value
end

When("I click {string}") do |element|
  click_on element
end

Then("I am on Sign up page") do
  expect(current_path).to eq new_user_registration_path
end
  
  
