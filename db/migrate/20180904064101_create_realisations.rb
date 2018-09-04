class CreateRealisations < ActiveRecord::Migration[5.2]
  def change
    create_table :realisations do |t|
      t.string :title
      t.text :subtitle
      t.text :description
      t.date :date

      t.timestamps
    end
  end
end
