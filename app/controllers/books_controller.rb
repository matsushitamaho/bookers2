class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def index
   @books=Book.all
  end

  def show
    @book=Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def create
    @book = book.new(book_params)
    @book.user_id = current_user.name
    @book.save
    if @book.save
      redirect_to books_path
    else
      render :new
    end
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
