class Genre < ActiveRecord::Base
  attr_accessible :name, :book_genres, :books
  
  has_many :book_genres, :dependent => :destroy
  has_many :books, :through => :book_genres
end
