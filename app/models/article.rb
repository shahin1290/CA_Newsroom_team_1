class Article < ApplicationRecord
  validates_presence_of  :title, :lede, :body, :author
  belongs_to :category
end
