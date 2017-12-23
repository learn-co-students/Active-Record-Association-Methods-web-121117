class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    drake = Artist.where "name = 'Drake'"
    if drake.count == 0
      drake = Artist.new(name: "Drake")
    end
    self.artist = drake
  end
end
