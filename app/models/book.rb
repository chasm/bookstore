class Book < ActiveRecord::Base
  attr_accessible :genre, :image_url, :isbn, :title, :author,
    :book_genres, :genres

  belongs_to :author
  has_many :book_genres, :dependent => :destroy
  has_many :genres, :through => :book_genres,
    :conditions => "disputed = FALSE"
end
