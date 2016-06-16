class BooksController < ApplicationController

  def index
    @books = Book.all

  end

  def show
    @books = Book.find(params[:id])
  end

  def new
    @books = Book.new
  end

  def create
    @books = Book.new(book_params)
    if @books.save
      redirect_to "/books/"
    else
      render :new
    end
  end

  def edit
    @books = Book.find(params[:id])
  end

  def update
    @books = Book.find(params[:id])

    if @books.update_attributes(book_params)
      redirect_to "/books/" + params[:id]
    else
      render :edit
    end
  end

  def destroy
    @books = Book.find(params[:id])
    @books.destroy
    redirect_to "/books"
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :url, :description)
  end

end
