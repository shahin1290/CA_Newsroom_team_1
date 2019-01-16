class Article < ApplicationRecord
  has_one_attached :image
  validates_presence_of  :title, :lede, :body, :author
  belongs_to :user
  belongs_to :category

  validates_presence_of  :title, :lede, :body, :category_id, :user_id
end
