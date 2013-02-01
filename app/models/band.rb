class Band < ActiveRecord::Base
  attr_accessible :name
  validates :name, uniqueness: :true

  has_many :artists
  has_many :recordings
  has_many :songs, through: :recordings

  def self.mult_rec_same_song
    recordings = self
      .select("bands.*, songs.name AS song_name, COUNT(recordings.id) AS song_count")
      .joins(:recordings)
      .joins("JOIN songs ON songs.id = recordings.song_id")
      .group(:band_id)
      .group(:song_id)
      .order("song_count DESC")

    recordings.each do |r|
      if r.song_count > 1
        puts "#{r.name} | #{r.song_name} | #{r.song_count}"
      end
    end
  end
end