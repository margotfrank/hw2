class CreateEnsembleroles < ActiveRecord::Migration[8.1]
  def change
    create_table :ensembleroles do |t|
      t.string :character_name
      t.references :actor, foreign_key: true
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end
