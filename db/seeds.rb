{
  'Ween' => {
    'The Mollusk' => ["I'm Dancing In The Show Tonight", "The Mollusk", "Polka Dot Tail", "I'll Be Your Jonny On The Spot", "Mutilated Lips", "The Blarney Stone", "It's Gonna Be (Alright)", "The Golden Eel", "Cold Blows the Wind", "Pink Eye (On My Leg)", "Waving My Dick In The Wind", "Buckingham Green", "Ocean Man", "She Wanted to Leav / (Reprise)"],
    'Chocolate and Cheese' => ["Take Me Away", "Spinal Meningitis (Got Me Down)", "Freedom of '76'", "I Can't Put My Finger on It", "A Tear for Eddie", "Roses Are Free", "Baby Bitch", "Mister, Would You Please Help My Pony?", "Drifter in the Dark", "Voodoo Lady", "Joppa Road", "Candi", "Buenas Tardes Amigo", "The HIV Song", "What Deaner Was Talkin' About", "Don't Shit Where You Eat"]
  },
  'Cracker' => {
    'Kerosene Hat' => ["Low", "Movie Star", "Get Off This", "Kerosene Hat", "Take Me Down To The Infirmary", "Nostalgia", "Sweet Potato", "Sick Of Goodbyes", "I Want Everything", "Lonesome Johnny Blues", "Let's Go For A Ride", "Loser", "Hi-Desert Biker Meth Lab", "Euro-Trash Girl", "I Ride My Bike", "Kerosene Hat"]
  },
  'Phish' => {
    'Billy Breathes' => ["Free", "Character Zero", "Waste", "Taste", "Theme from the Bottom", "Train Song", "Bliss", "Billy Breathes", "Swept Away", "Steep", "Prince Caspian"],
    'Junta' => ["Fee", "You Enjoy Myself", "Esther", "Golgi Apparatus", "Foam", "Dinner and a Movie", "The Divided Sky", "David Bowie", "Fluffhead", "Fluff's Travels", "Contact", "Union Federal", "Sanity", "Icculus"]
  },
  'Ministry' => {
    'Twitch' => ["Just Like You", "We Believe", "All Day Remix", "The Angel", "Over the Shoulder", "My Possesion", "Where You at Now? / Crash & Burn / Twitch"]
  },
  'Tom Petty' => {
    'Into the Great Wide Open' => ["Learning to Fly", "Kings Highway", "Into the Great WIde Open", "Two Gunslingers", "The Dark of the Sun", "All or Nothin'", "All the Wrong Reasons", "Too Good to Be True", "Out in the Cold", "You and I will meet Again", "Makin' Some Noise", "Built to Last"],
    'The Last DJ' => ["The Last DJ", "Money Becomes King", "Dreamville", "Joe", "When a Kid Goes Bad", "Like a Diamond", "Lost Children", "Blue Sunday", "You and Me", "The Man Who Loves Women", "Have Love WIll Travel", "Can't Stop the Sun"]
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
