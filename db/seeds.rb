# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Seed the RottenPotatoes DB with some movies.
more_movies = [
  { title: 'My Neighbor Totoro', rating: 'G',
    release_date: '16-Apr-1988' },
  { title: 'Green Book', rating: 'PG-13',
    release_date: '16-Nov-2018' },
  { title: 'Parasite', rating: 'R',
    release_date: '30-May-2019' },
  { title: 'Nomadland', rating: 'R',
    release_date: '19-Feb-2021' },
  { title: 'CODA', rating: 'PG-13',
    release_date: '13-Aug-2021' },
  # new movies
  { title: 'Inception', rating: 'PG-13', 
    release_date: '13-Jul-2010',
    description: 'A thief who steals corporate secrets through dream-sharing technology is given a chance to erase his criminal history.',
    director: 'Christopher Nolan',
    duration: 148,
    cast: 'Leonardo DiCaprio, Joseph Gordon-Levitt, Elliot Page',
    genre: 'Action, Adventure, Sci-Fi'
  },
  { title: 'Star Wars: Episode IV - A New Hope', rating: 'PG', 
    release_date: '25-May-1977',
    description: 'Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee, and two droids to save the galaxy.',
    director: 'George Lucas',
    duration: 121,
    cast: 'Mark Hamill, Harrison Ford, Carrie Fisher',
    genre: 'Action, Adventure, Fantasy'
  },
  { title: 'Avatar', rating: 'PG-13', 
    release_date: '18-Dec-2009',
    description: 'A paraplegic Marine dispatched to the moon Pandora becomes torn between following orders and protecting an alien civilization.',
    director: 'James Cameron',
    duration: 162,
    cast: 'Sam Worthington, Zoe Saldana, Sigourney Weaver',
    genre: 'Action, Adventure, Fantasy'
  },
  { title: 'La La Land', rating: 'PG-13', 
    release_date: '09-Dec-2016',
    description: 'While navigating their careers in Los Angeles, a pianist and an actress fall in love while attempting to reconcile their aspirations.',
    director: 'Damien Chazelle',
    duration: 128,
    cast: 'Ryan Gosling, Emma Stone',
    genre: 'Comedy, Drama, Music'
  }
]

more_movies.each do |movie|
  Movie.find_or_create_by(title: movie[:title]) do |m|
    m.rating = movie[:rating]
    m.release_date = movie[:release_date]
    m.description = movie[:description]
    m.director = movie[:director]
    m.duration = movie[:duration]
    m.cast = movie[:cast]
    m.genre = movie[:genre]
  end
end
