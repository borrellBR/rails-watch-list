class Movie < ApplicationRecord
  has_many :bookmarks

  has_many :lists, through: :bookmarks

  validates :title, :overview, presence: true, uniqueness: true


  validates :poster, presence: true


end
