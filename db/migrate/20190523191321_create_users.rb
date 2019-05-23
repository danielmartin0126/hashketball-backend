class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :team_name
      t.string :profile_pic
      t.timestamps
    end
  end
end
