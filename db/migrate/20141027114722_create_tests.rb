class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.references :lesson, index: true
      t.string :name

      t.timestamps
    end
  end
end
