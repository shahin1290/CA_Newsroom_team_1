Given("the following user exists") do |table|
  table.hashes.each do |user|
    user = create(:user, user)
  end
end

Given("I visit the site") do
  visit root_path
end

When('I have logged in') do
  steps %{
    Given I click 'Log in'
    And I fill in 'Email' with 'hanna@random.com'
    And I fill in 'Password' with 'password'
    And I click 'Log in'
  }
end

When("I fill in {string} with {string}") do |element, value|
  fill_in element,with: value
end

When("I click {string}") do |element|
  click_on element
end
