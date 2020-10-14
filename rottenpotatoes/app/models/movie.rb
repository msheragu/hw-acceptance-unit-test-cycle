class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  
  def self.related_movies movie_title
    director = Movie.find_by(title: movie_title).director
    if director.blank?
      return nil
    end
    if director.nil?
      return nil
    end
    Movie.where(director: director).pluck(:title)
  end
end
