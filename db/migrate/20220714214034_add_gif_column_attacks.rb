class AddGifColumnAttacks < ActiveRecord::Migration[6.1]
  def change
    add_column :attacks, :image, :string
  end
end
