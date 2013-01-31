class SongGenre < ActiveRecord::Base
  attr_accessible :genre_id, :song_id
  belongs_to :song
  belongs_to :genre
end
