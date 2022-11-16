class Occurrence < ApplicationRecord
  belongs_to :user, foreign_key: 'author_id', class_name: 'User'
  has_and_belongs_to_many :categories

  validates :name, :amount, presence: true
  validates_presence_of :categories
end
