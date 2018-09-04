class CreateDescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :descriptions do |t|
      t.string :page
      t.string :role
      t.string :style
      t.text :text

      t.timestamps
    end
  end
end
