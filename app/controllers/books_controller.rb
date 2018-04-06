class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create #this line connects with the artist_params on line 30
    book = Book.create book_params
      redirect_to book
  end

  def edit
    @book = Book.find params[:id]
  end

  def update
    book = Book.find params[:id]
    book.update book_params
    redirect_to book
  end

  def show
    @book = Book.find params[:id]
  end

  def destroy
    book = Book.find params[:id]
    book.destroy
    redirect_to books_path
  end

  #Strong params: a whitelist of permitted fields
  private
  def book_params
    params.require(:book).permit(:title, :year, :author_id)
  end
end
