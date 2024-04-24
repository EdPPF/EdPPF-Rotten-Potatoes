class ChangeReleaseDateTypeInMovie < ActiveRecord::Migration[7.1]
  def change
    change_column :movies, :release_date, :string
  end
end
