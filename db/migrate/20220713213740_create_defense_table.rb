class CreateDefenseTable < ActiveRecord::Migration[6.1]
  def change
    create_table :defenses do |t|
      t.string  :name
      t.string  :attack_id
      t.string  :notes
      t.string :result
      t.string :stage
    end
  end
end
