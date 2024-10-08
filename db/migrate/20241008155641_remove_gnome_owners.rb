class RemoveGnomeOwners < ActiveRecord::Migration[7.1]
  def change
    drop_table :gnomes_owners
  end
end
