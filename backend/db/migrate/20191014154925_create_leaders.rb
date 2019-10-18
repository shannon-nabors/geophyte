class CreateLeaders < ActiveRecord::Migration[6.0]
  def change
    create_table :leaders do |t|
      t.string :name
      t.string :photo
      t.string :title

      t.timestamps
    end
  end
end
