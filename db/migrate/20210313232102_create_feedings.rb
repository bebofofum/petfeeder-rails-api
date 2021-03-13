class CreateFeedings < ActiveRecord::Migration[6.0]
  def change
    create_table :feedings do |t|
      t.text :description
      t.string :category
      t.boolean :completed
      t.references :pet, null: false, foreign_key: true
      t.references :owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
