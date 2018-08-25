class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.text :body
      t.integer :magenta
      t.integer :race_id
      t.integer :gender_id
      t.integer :story_id
      t.integer :faction_id
      t.integer :country_id

      t.timestamps
    end
  end
end
