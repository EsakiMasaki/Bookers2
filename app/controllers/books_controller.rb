class BooksController < ApplicationController
  def index
    @book = current_user.books.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.user_id)
  end

  def show
    @book = current_user.books.new
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title,:body)
  end

end
