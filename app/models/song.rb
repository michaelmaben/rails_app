class Song < ApplicationRecord
  scope :artist, ->(name){ where(artist: name) }
  scope :genre, ->(genre) { where(genre: genre) }
  scope :published, ->(published) { where(published: published)}
  scope :title, ->(title){ where(["title like ?", "%#{title}%"]) }
  scope :top, ->(top){ limit (top) }
  scope :sort_col, ->(col, direction) { order("#{col} #{direction}") }

  def self.search(title, genre, artist)
    title(title).genre(genre).artist(artist)
  end
end
