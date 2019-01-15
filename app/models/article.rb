class Article < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates_presence_of  :title, :lede, :body, :user_id
end
