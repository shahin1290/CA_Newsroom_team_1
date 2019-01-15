class Article < ApplicationRecord

  validates_presence_of  :title, :lede, :body, :author
  has_one_attached :image

end
