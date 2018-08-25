class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.string :title
      t.text :body
      t.integer :type           # 1=city 2=country 3=continent
      t.integer :capital_id
      t.integer :parent_id

      t.timestamps
    end
  end
end
