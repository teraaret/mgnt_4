class CreateFactions < ActiveRecord::Migration[5.1]
  def change
    create_table :factions do |t|
      t.string :title
      t.text :body
      t.integer :country_id

      t.timestamps
    end
  end
end
