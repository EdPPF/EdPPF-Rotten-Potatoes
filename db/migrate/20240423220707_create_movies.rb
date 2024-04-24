class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :rating
      t.date :release_date
      t.text :description

      t.timestamps
    end
  end
end
