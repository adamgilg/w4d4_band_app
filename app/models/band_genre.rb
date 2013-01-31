class BandGenre < ActiveRecord::Base
  attr_accessible :band_id, :genre_id
  belongs_to :band
  belongs_to :genre

  has_many :band_genres
  has_many :genres, through: :band_genres
end
