class Song < ActiveRecord::Base
  attr_accessible :name, :author_id

  belongs_to :author, class_name: "Artist", foreign_key: :author_id
  has_many :recordings
  has_many :bands, through: :recordings
end