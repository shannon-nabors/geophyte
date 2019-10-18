class CreateNations < ActiveRecord::Migration[6.0]
  def change
    create_table :nations do |t|
      t.string :name
      t.string :flag

      t.timestamps
    end
  end
end
