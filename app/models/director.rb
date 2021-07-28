# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  def filmography
    my_director_id = self.id
    matching_movies = Movie.where({ :director_id => my_director_id})
    ordered_movies = matching_movies.order({ :year => :asc })

    return ordered_movies
  end
end
