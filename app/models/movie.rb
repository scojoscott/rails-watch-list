class Movie < ApplicationRecord
  has_many :bookmarks
  # You can’t delete a movie if it is referenced in at least one bookmark.

  # A movie must have a unique title.
  validates :title, uniqueness: true
  validates :title, presence: true
  validates :overview, presence: true
end
