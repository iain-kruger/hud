class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.string :person
      t.integer :week

      t.timestamps null: false
    end
  end
end
