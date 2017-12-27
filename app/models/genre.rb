class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

require  'pry'

  def song_count
    self.songs.size
  end

  def artist_count
    self.artists.count
  end

  def all_artist_names
  self.artists.map {|instance| instance.name}
  end
  
end
