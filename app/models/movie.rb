class Movie < ActiveRecord::Base
  def self.with_ratings(ratings_list)
    
    if(ratings_list.length == 0)
      return Movie.all
    end
    return Movie.where(rating: ratings_list)
  end


  def self.all_ratings ; ['G','PG','PG-13','R']  ; end
  
end