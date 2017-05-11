class CreateLobbyists < ActiveRecord::Migration[5.0]
  def change
    create_table :lobbyists do |t|
      t.string :name
      t.string :principal
      t.datetime :date
      t.text :description
      t.decimal :fee
      t.string :government

      t.timestamps
    end
  end
end
