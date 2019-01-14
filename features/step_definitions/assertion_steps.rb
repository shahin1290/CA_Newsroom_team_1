Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Then("I should see Navbar") do
  expect(page).to have_css '.navbar'
end