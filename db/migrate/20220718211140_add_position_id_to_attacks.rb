class AddPositionIdToAttacks < ActiveRecord::Migration[6.1]
  def change
    add_column :attacks, :position_id, :integer
  end
end
