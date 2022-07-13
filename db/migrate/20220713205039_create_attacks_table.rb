class CreateAttacksTable < ActiveRecord::Migration[6.1]
  def change
    create_table :attacks do |t|
      t.string  :name
      t.string  :result
      t.string  :notes
    end
  end
end
