class CreateStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :strolls do |t|
      t.string :place
      t.references :dog, foreign_key: true
      t.references :dogsitter, foreign_key: true
      t.timestamps
    end
  end
end
