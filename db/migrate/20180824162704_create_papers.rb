class CreatePapers < ActiveRecord::Migration[5.1]
  def change
    create_table :papers do |t|
      t.string :title
      t.text :body
      t.string :tag
      t.integer :character_id
      t.integer :faction_id
      t.integer :country_id
      t.integer :race_id
      t.integer :family_id

      t.timestamps
    end
  end
end
