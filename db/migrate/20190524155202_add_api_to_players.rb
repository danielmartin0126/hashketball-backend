class AddApiToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :api_id, :integer
  end
end
