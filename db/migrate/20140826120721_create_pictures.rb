class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.binary :image, limit: 5.megabyte
      t.string :imagetype
      t.references :need, index: true

      t.timestamps
    end
  end
end
