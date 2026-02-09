class CreateMovies < ActiveRecord::Migration[8.1]
  def change
    create_table :movies do |t|
      t.string :movie_title
      t.integer :year_released
      t.string :mpaa_rating
      t.references :studio, foreign_key: true

      t.timestamps
    end
  end
end
