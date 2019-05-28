class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :f_name
      t.string :l_name
      t.string :position
      t.string :team_name
      t.boolean :starting, default: false

      t.timestamps
    end
  end
end
