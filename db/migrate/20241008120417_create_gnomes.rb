class CreateGnomes < ActiveRecord::Migration[7.1]
  def change
    create_table :gnomes do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :image_path
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
