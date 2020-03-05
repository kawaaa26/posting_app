class Post < ApplicationRecord
  validates :title, presence: true, length: { maximum: 200 }
  validates :content, presence: true, length: { maximum: 30000 }
end
