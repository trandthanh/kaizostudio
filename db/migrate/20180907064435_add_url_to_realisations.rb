class AddUrlToRealisations < ActiveRecord::Migration[5.2]
  def change
    add_column :realisations, :url, :string
  end
end
