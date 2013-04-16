class Author < ActiveRecord::Base
  attr_accessible :bio, :image_url, :name, :books
  
  has_many :books
end
