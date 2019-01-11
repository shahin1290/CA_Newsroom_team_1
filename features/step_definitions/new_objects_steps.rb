Given("the following articles exists") do |table|
    table.hashes.each do |article|
        FactoryBot.create(:article, article)
    end
end