class AddPhotosToRealisations < ActiveRecord::Migration[5.2]
  def change
    add_column :realisations, :photos, :string, array: true
  end
end
