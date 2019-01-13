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


  
  
  
  