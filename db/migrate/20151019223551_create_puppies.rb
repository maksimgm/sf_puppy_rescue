class CreatePuppies < ActiveRecord::Migration
  def change
    create_table :puppies do |t|
      t.string :name
      t.integer :age
      t.text :bio
      t.string :image_url

      t.timestamps null: false
    end
  end
end
