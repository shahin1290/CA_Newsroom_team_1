class Article < ApplicationRecord
  belongs_to :user

  validates_presence_of  :title, :lede, :body, :user_id
end
