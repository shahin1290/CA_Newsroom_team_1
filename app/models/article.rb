class Article < ApplicationRecord

  validates_presence_of  :title, :lede, :body, :author, :date

end
