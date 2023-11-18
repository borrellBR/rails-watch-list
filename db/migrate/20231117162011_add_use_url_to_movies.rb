class AddUseUrlToMovies < ActiveRecord::Migration[7.1]
  def change
    add_column :movies, :use_url, :boolean
  end
end
