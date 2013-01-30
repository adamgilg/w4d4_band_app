class Artist < ActiveRecord::Base
  attr_accessible :name, :band_id

  belongs_to :band
  has_many :authored_songs, class_name: "Song", foreign_key: :author_id
  has_many :recordings, through: :band
  has_many :performed_songs, through: :band, source: :songs

  def self.authored_songs
    song_authors = {}

    Artist.includes(:authored_songs).each do |artist|
      song_authors[artist] = artist.authored_songs
    end

    song_authors
  end
end