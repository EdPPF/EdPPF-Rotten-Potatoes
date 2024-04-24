# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin-rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Movie.destroy_all

# Seed data for movies
movies_data = [
  {
    title: 'Interstellar',
    rating: 'PG-13',
    release_date: '11-05-2014 ',
    description: 'The adventures of a group of explorers who make use of a newly discovered wormhole to surpass the limitations on human space travel and conquer the vast distances involved in an interstellar voyage.'
  },
  {
    title: 'Spider-Man: Into the Spider-Verse',
    rating: 'PG',
    release_date: '12-14-2018',
    description: 'Struggling to find his place in the world while juggling school and family, Brooklyn teenager Miles Morales is unexpectedly bitten by a radioactive spider and develops unfathomable powers just like the one and only Spider-Man. While wrestling with the implications of his new abilities, Miles discovers a super collider created by the madman Wilson "Kingpin" Fisk, causing others from across the Spider-Verse to be inadvertently transported to his dimension.'
  },
  {
    title: 'Spider-Man: Across the Spider-Verse',
    rating: 'PG',
    release_date: '06-02-2023',
    description: 'After reuniting with Gwen Stacy, Brooklyn’s full-time, friendly neighborhood Spider-Man is catapulted across the Multiverse, where he encounters the Spider Society, a team of Spider-People charged with protecting the Multiverse’s very existence. But when the heroes clash on how to handle a new threat, Miles finds himself pitted against the other Spiders and must set out on his own to save those he loves most.'
  },
  {
    title: 'Evangelion: 1.0 You Are (Not) Alone',
    rating: '12',
    release_date: '03-28-2009',
    description: 'After the Second Impact, Tokyo-3 is being attacked by giant monsters called Angels that seek to eradicate humankind. The child Shinji’s objective is to fight the Angels by piloting one of the mysterious Evangelion mecha units. A remake of the first six episodes of GAINAX’s famous 1996 anime series. The film was retitled “Evangelion: 1.01” for its DVD release and “Evangelion: 1.11” for a release with additional scenes.'
  },
  {
    title: 'Evangelion: 2.0 You Can (Not) Advance',
    rating: 'NR',
    release_date: '10-24-2009',
    description: 'Under constant attack by monstrous creatures called Angels that seek to eradicate humankind, U.N. Special Agency NERV introduces two new EVA pilots to help defend the city of Tokyo-3: the mysterious Makinami Mari Illustrous and the intense Asuka Langley Shikinami. Meanwhile, Gendo Ikari and SEELE proceed with a secret project that involves both Rei and Shinji.'
  },
  {
    title: 'Evangelion: 3.0 You Can (Not) Redo',
    rating: 'PG-13',
    release_date: '01-10-2014',
    description: 'Fourteen years after Third Impact, Shinji Ikari awakens to a world he does not remember. He hasn\'t aged. Much of Earth is laid in ruins, NERV has been dismantled, and people who he once protected have turned against him. Befriending the enigmatic Kaworu Nagisa, Shinji continues the fight against the angels and realizes the fighting is far from over, even when it could be against his former allies. The characters\' struggles continue amidst the battles against the angels and each other, spiraling down to what could inevitably be the end of the world.'
  },
  {
    title: 'Evangelion: 3.0+1.0 Thrice Upon a Time',
    rating: 'R',
    release_date: '12-06-2022',
    description: 'In the aftermath of the Fourth Impact, stranded without their Evangelions, Shinji, Asuka and Rei find refuge in one of the rare pockets of humanity that still exist on the ruined planet Earth. There, each lives a life far different from their days as an Evangelion pilot. However, the danger to the world is far from over. A new impact is looming on the horizon — one that will prove to be the true end of Evangelion.'
  },
  {
    title: 'Dune (2021)',
    rating: 'PG-13',
    release_date: '22-10-2021',
    description: 'Paul Atreides, a brilliant and gifted young man born into a great destiny beyond his understanding, must travel to the most dangerous planet in the universe to ensure the future of his family and his people. As malevolent forces explode into conflict over the planet\'s exclusive supply of the most precious resource in existence-a commodity capable of unlocking humanity\'s greatest potential-only those who can conquer their fear will survive.'
  },
  {
    title: 'Dune: Part Two',
    rating: 'PG-13',
    release_date: '03-01-2024',
    description: 'Follow the mythic journey of Paul Atreides as he unites with Chani and the Fremen while on a path of revenge against the conspirators who destroyed his family. Facing a choice between the love of his life and the fate of the known universe, Paul endeavors to prevent a terrible future only he can foresee. '
  }
]

# Create movies from seed data
movies_data.each do |movie_data|
  Movie.create!(movie_data)
end
