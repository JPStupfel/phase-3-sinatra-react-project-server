class CreatePositionTable < ActiveRecord::Migration[6.1]
  def change

    create_table :positions do |t|
      t.string  :name
      t.string  :notes
    end
  

  end
end
