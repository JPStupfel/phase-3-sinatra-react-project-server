class CreateSequenceTable < ActiveRecord::Migration[6.1]
  def change

    create_table :sequences do |t|
      t.integer  :position_id
      t.integer  :attack_id
      t.integer  :defense_id

    end

  end
end
