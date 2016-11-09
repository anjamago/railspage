class AddColumnTitleToChirps < ActiveRecord::Migration[5.0]
  def change
    add_column :chirps, :title, :string
  end
end
