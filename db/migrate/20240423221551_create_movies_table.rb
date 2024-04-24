class CreateMoviesTable < ActiveRecord::Migration[7.1]
  def change
    create_table :movies_tables do |t|

      t.timestamps
    end
  end
end
