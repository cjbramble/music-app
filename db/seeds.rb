{ 'Ween' => ['Molly', 'Voodoo Lady'],
  'Parliament' => ['Flash Light'],
  'Cracker' => ['Get Off This', 'Low', 'Mr. Wrong'],
  'Phish' => ['Tweezer']
}.each do |artist, songs|

  artist = Artist.create(name: artist)
  songs.each do |song|
    artist.songs.create(title: song)
  end
  artist.save
end
