class BookGenre < ActiveRecord::Base
  attr_accessible :book, :genre, :disputed
  
  belongs_to :book
  belongs_to :genre
end
