class AddFeaturedToRealisations < ActiveRecord::Migration[5.2]
  def change
    add_column :realisations, :featured, :boolean
  end
end
