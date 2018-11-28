class AddGenreIdToSongs < ActiveRecord::Migration
  def change
    add_reference :songs, :genre_id, index: true, foreign_key: true
  end
end
