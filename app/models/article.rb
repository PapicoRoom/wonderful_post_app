class Article < ApplicationRecord
  validates :writer, presence: true
  validates :title, presence: true
  validates :content, presence: true
end
