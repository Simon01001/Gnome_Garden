class RemoveUserIdFromGnomes < ActiveRecord::Migration[7.1]
  def change
    remove_index :gnomes, :user_id
    remove_column :gnomes, :user_id, :string
  end
end
