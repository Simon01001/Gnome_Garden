class CreateGnomesOwners < ActiveRecord::Migration[7.1]
  def change
    create_table :gnomes_owners do |t|
      t.references :gnome, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
