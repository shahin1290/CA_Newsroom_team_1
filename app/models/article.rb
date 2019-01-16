class Article < ApplicationRecord
  has_one_attached :image
  validates_presence_of  :title, :lede, :body, :author
  belongs_to :category
end
