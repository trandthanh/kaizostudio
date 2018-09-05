class AddCoverPictureToRealisations < ActiveRecord::Migration[5.2]
  def change
    add_column :realisations, :cover_picture, :string
  end
end
