class Category < ApplicationRecord
  belongs_to :user, foreign_key: 'author_id', class_name: 'User'
  has_and_belongs_to_many :occurrences

  validates :name, presence: true, uniqueness: { scope: :user }
  validates :icon, presence: true
end
