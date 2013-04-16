class Book < ActiveRecord::Base
  attr_accessible :genre, :image_url, :isbn, :title, :author

  belongs_to :author
end
