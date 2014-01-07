class CreateEqs < ActiveRecord::Migration
  def change
    create_table :eqs do |t|
      t.string :published_at
      t.string :occurred_at
      t.string :epicenter
      t.string :longitude
      t.string :latitude
      t.string :depth
      t.float :magnitude
      t.text :info

      t.timestamps
    end
  end
end
