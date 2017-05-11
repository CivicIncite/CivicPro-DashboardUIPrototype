class CreateRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :records do |t|
      t.text :description
      t.string :government
      t.string :agency
      t.string :record_type
      t.datetime :date
      t.string :status

      t.timestamps
    end
  end
end
