class Artist < ActiveRecord::Base

  has_many :songs
  has_many :genres, through: :songs

  def artist_ids=(ids)
    ids.each do |id|
      artist  = Artist.find(id)
      self.artists << artist
    end
  end

end
