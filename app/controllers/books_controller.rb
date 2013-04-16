class BooksController < ApplicationController
  def index
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
  end

  def destroy
  end
end
