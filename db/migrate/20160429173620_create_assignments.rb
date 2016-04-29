class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :name1
      t.string :name2
      t.date :due
      t.text :score
      t.integer :percent
      t.boolean :discussed
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
