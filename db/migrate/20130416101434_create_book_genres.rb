class CreateBookGenres < ActiveRecord::Migration
  def change
    create_table :book_genres do |t|
      t.boolean :disputed, :default => false
      t.references :book
      t.references :genre

      t.timestamps
    end
    add_index :book_genres, :book_id
    add_index :book_genres, :genre_id
    add_index :book_genres, [ :book_id, :genre_id ], :unique => true
  end
end
