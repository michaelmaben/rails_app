class Song < ApplicationRecord
  scope :artist, ->(name){ where(artist: name) }
  scope :genre, ->(genre) { where(genre: genre) }
  scope :published, ->(published) { where(published: published)}
  scope :title, ->(title){ where(["title like ?", "%#{title}%"]) }
  scope :top, ->(top){ limit (top) }
  scope :sort_col, ->(col, direction) { order("#{col} #{direction}") }

end
