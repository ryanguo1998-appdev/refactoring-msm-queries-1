# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  def movie
    my_movie_id = self.movie_id
    matching_movies = Movie.where({ :id => my_movie_id})
    my_movie = matching_movies.at(0)

    return my_movie
  end
end
