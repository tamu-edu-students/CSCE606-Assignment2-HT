class CreateMovies < ActiveRecord::Migration[8.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :rating
      t.text :description
      t.datetime :release_date
      t.string :director
      t.integer :duration
      t.text :cast
      t.string :genre

      t.timestamps
    end
  end
end
