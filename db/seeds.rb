{
  'Ween' => {
    'The Mollusk' => ["I'm Dancing In The Show Tonight", "The Mollusk", "Polka Dot Tail"],
    'Chocolate and Cheese' => ["Take Me Away", "Spinal Meningitis (Got Me Down)", "Freedom of '76'"]
  },
  'Cracker' => {
    'Kerosene Hat' => ["Low", "Movie Star", "Get Off This"]
  }
}.each do |artist, albums|

  artist = Artist.create(name: artist)

  albums.each do |title, songs|
    new_album = artist.albums.create(title: title)

    songs.each do |song|
      new_album.songs.create(title: song)
    end
  end
end
