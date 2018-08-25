class CreateRaces < ActiveRecord::Migration[5.1]
  def change
    create_table :races do |t|
      t.string :title
      t.text :body
      t.integer :family_id

      t.timestamps
    end
  end
end
