class BooksController < ApplicationController

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to books_path
    else
      @books = Book.all
      render :index
    end
  end

  def get_image
    if image.attached?
      image
    else
      'no_image.jpg'
    end
  end
  
  def index
    @book = Book.new
    @books = Book.all
    @book.user_id = current_user.id

  end

  def show
    @book = Book.find(params[:id])
  end

  def destroy
  end

  def edit
    @book = Book.find([:id])
  end
  


  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
