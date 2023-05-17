class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def index
  end

  def show
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def create
    book = book.new(book_params)
    book.save
    redirect_to books_path(book.id)
  end
  
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to books_path(book.id)
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
