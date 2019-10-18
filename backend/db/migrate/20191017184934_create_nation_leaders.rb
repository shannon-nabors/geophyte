class CreateNationLeaders < ActiveRecord::Migration[6.0]
  def change
    create_table :nation_leaders do |t|
      t.references :nation, null: false, foreign_key: true
      t.references :leader, null: false, foreign_key: true

      t.timestamps
    end
  end
end
