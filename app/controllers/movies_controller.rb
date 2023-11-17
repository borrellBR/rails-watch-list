class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :new, :destroy]

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to @movie, notice: 'Movie was successfully created.'
    else
      render :new
    end
  end

  def destroy
    puts "Attempting to destroy movie with ID #{params[:id]}"
    @movie.destroy
    redirect_to movies_path, notice: 'Movie was successfully deleted.'
  end


  private

  def movie_params
    params.require(:movie).permit(:title, :overview, :poster_url, :rating)
  end

  def set_movie
    @movie = Movie.find(params[:id]) if params[:id]
  end
end
