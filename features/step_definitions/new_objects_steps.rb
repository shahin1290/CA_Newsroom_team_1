Given("the following articles exists") do |table|
  table.hashes.each do |article|
    article = create(:article, article)
  end
end

Given("the following categories exists") do |table|
  table.hashes.each do |category|
    category = create(:category, category)
  end
end