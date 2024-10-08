class ChangePriceToDecimalInGnome < ActiveRecord::Migration[7.1]
  def change
    change_column :gnomes, :price, :decimal, precision: 8, scale: 2
  end
end
