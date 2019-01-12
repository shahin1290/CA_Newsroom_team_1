Given("the following user exists") do |table|
  table.hashes.each do |user|
    user = create(:user, user)
  end
end

Given("I visit the site") do
  visit root_path
end

When("I fill in {string} with {string}") do |element, value|
  fill_in element,with: value
end

When("I click {string}") do |element|
  click_on element
end
  
  
  
