class Article < ApplicationRecord
  validates :title, :body, presence: true
  validates_uniqueness_of :title
end
