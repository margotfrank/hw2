# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!
# - Note rubric explanation for appropriate use of external resources.

# Rubric
#
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)
# - You are welcome to use external resources for help with the assignment (including
#   colleagues, AI, internet search, etc). However, the solution you submit must
#   utilize the skills and strategies covered in class. Alternate solutions which
#   do not demonstrate an understanding of the approaches used in class will receive
#   significant deductions. Any concern should be raised with faculty prior to the due date.

# Submission
#
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======
# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========
# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Represented by agent
# ====================
# Christian Bale

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!
Ensemblerole.destroy_all
Actor.destroy_all
Movie.destroy_all
Agent.destroy_all
Studio.destroy_all


# Generate models and tables, according to the domain model.
# TODO!
# I generated the models and migration files to match the domain model within the terminal
# I executed the migration files to create the tables in the database within the terminal

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!
studio = Studio.new
studio["studio_name"] = "Warner Bros."
studio.save

movie = Movie.new
movie["movie_title"] = "Batman Begins"
movie["year_released"] = 2005
movie["mpaa_rating"] = "PG-13"
movie["studio_id"] = studio.id
movie.save
batman_begins = movie

movie = Movie.new
movie["movie_title"] = "The Dark Knight"
movie["year_released"] = 2008
movie["mpaa_rating"] = "PG-13"
movie["studio_id"] = studio.id
movie.save
dark_knight = movie

movie = Movie.new
movie["movie_title"] = "The Dark Knight Rises"
movie["year_released"] = 2012
movie["mpaa_rating"] = "PG-13"
movie["studio_id"] = studio.id
movie.save
dark_knight_rises = movie

agent = Agent.new
agent["agent_name"] = "Talent Agency"
agent.save

actor = Actor.new
actor["actor_name"] = "Christian Bale"
actor["agent_id"] = agent.id
actor.save
christian_bale = actor

actor = Actor.new
actor["actor_name"] = "Michael Caine"
actor.save
michael_caine = actor

actor = Actor.new
actor["actor_name"] = "Liam Neeson"
actor.save
liam_neeson = actor

actor = Actor.new
actor["actor_name"] = "Katie Holmes"
actor.save
katie_holmes = actor

actor = Actor.new
actor["actor_name"] = "Gary Oldman"
actor.save
gary_oldman = actor

actor = Actor.new
actor["actor_name"] = "Heath Ledger"
actor.save
heath_ledger = actor

actor = Actor.new
actor["actor_name"] = "Aaron Eckhart"
actor.save
aaron_eckhart = actor

actor = Actor.new
actor["actor_name"] = "Maggie Gyllenhaal"
actor.save
maggie_gyllenhaal = actor

actor = Actor.new
actor["actor_name"] = "Tom Hardy"
actor.save
tom_hardy = actor

actor = Actor.new
actor["actor_name"] = "Joseph Gordon-Levitt"
actor.save
joseph_gordon_levitt = actor

actor = Actor.new
actor["actor_name"] = "Anne Hathaway"
actor.save
anne_hathaway = actor


role = Ensemblerole.new
role["movie_id"] = batman_begins.id
role["actor_id"] = christian_bale.id
role["character_name"] = "Bruce Wayne"
role.save

role = Ensemblerole.new
role["movie_id"] = batman_begins.id
role["actor_id"] = michael_caine.id
role["character_name"] = "Alfred"
role.save

role = Ensemblerole.new
role["movie_id"] = batman_begins.id
role["actor_id"] = liam_neeson.id
role["character_name"] = "Ra's Al Ghul"
role.save

role = Ensemblerole.new
role["movie_id"] = batman_begins.id
role["actor_id"] = katie_holmes.id
role["character_name"] = "Rachel Dawes"
role.save

role = Ensemblerole.new
role["movie_id"] = batman_begins.id
role["actor_id"] = gary_oldman.id
role["character_name"] = "Commissioner Gordon"
role.save


role = Ensemblerole.new
role["movie_id"] = dark_knight.id
role["actor_id"] = christian_bale.id
role["character_name"] = "Bruce Wayne"
role.save

role = Ensemblerole.new
role["movie_id"] = dark_knight.id
role["actor_id"] = heath_ledger.id
role["character_name"] = "Joker"
role.save

role = Ensemblerole.new
role["movie_id"] = dark_knight.id
role["actor_id"] = aaron_eckhart.id
role["character_name"] = "Harvey Dent"
role.save

role = Ensemblerole.new
role["movie_id"] = dark_knight.id
role["actor_id"] = michael_caine.id
role["character_name"] = "Alfred"
role.save

role = Ensemblerole.new
role["movie_id"] = dark_knight.id
role["actor_id"] = maggie_gyllenhaal.id
role["character_name"] = "Rachel Dawes"
role.save


role = Ensemblerole.new
role["movie_id"] = dark_knight_rises.id
role["actor_id"] = christian_bale.id
role["character_name"] = "Bruce Wayne"
role.save

role = Ensemblerole.new
role["movie_id"] = dark_knight_rises.id
role["actor_id"] = gary_oldman.id
role["character_name"] = "Commissioner Gordon"
role.save

role = Ensemblerole.new
role["movie_id"] = dark_knight_rises.id
role["actor_id"] = tom_hardy.id
role["character_name"] = "Bane"
role.save

role = Ensemblerole.new
role["movie_id"] = dark_knight_rises.id
role["actor_id"] = joseph_gordon_levitt.id
role["character_name"] = "John Blake"
role.save

role = Ensemblerole.new
role["movie_id"] = dark_knight_rises.id
role["actor_id"] = anne_hathaway.id
role["character_name"] = "Selina Kyle"
role.save

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!
movies = Movie.all

for movie in movies
  studio = Studio.find_by({ "id" => movie["studio_id"] })

  puts movie["movie_title"].ljust(22) + movie["year_released"].to_s.ljust(15) + movie["mpaa_rating"].ljust(7) + studio["studio_name"]
end

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!
roles = Ensemblerole.all

for role in roles
  movie = Movie.find_by({ "id" => role["movie_id"] })
  actor = Actor.find_by({ "id" => role["actor_id"] })

  puts movie["movie_title"].ljust(22) +
       actor["actor_name"].ljust(22) +
       role["character_name"]
end

# Prints a header for the agent's list of represented actors output
puts ""
puts "Represented by agent"
puts "===================="
puts ""

# Query the actor data and loop through the results to display the agent's list of represented actors output.
# TODO!
actors = Actor.all

for actor in actors
  if actor["agent_id"] != nil
    puts actor["actor_name"]
  end
end