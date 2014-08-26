class CreateNeeds < ActiveRecord::Migration
  def change
    create_table :needs do |t|
      t.references :category, index: true
      t.string :title
      t.text :description
      t.string :tel
      t.string :facebook
      t.string :email
      t.text :comment

      t.timestamps
    end
  end
end
