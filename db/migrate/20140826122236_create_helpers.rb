class CreateHelpers < ActiveRecord::Migration
  def change
    create_table :helpers do |t|
      t.references :category, index: true
      t.string :skill
      t.string :tel
      t.string :email
      t.string :facebook
      t.text :comment

      t.timestamps
    end
  end
end
