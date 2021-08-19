class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  # When you delete a list, you should delete all associated bookmarks (but not the movies as they can be referenced in other lists).

  # A list must have a unique name.
  validates :name, uniqueness: true
  validates :name, presence: true
end
