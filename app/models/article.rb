class Article < ApplicationRecord
  has_many :comments
  validates :title, :body, presence: true
  validates_uniqueness_of :title
end
