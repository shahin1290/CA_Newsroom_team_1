5.times do
    Article.create(title: "Title", lede: "lede", body:"body", author:"author")
end

User.create(email: "member@mail.com", password: "membermember", first_name: "Member", last_name: "Member", role: 0)
User.create(email: "journalist@mail.com", password: "journalist", first_name: "Journo", last_name: "Journo", role: 1)