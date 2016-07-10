class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects do |t|
      t.belongs_to :year, foreign_key: true
      t.string :name
      t.string :semester
      t.boolean :elective
      t.boolean :promotable
      t.text :footnote

      t.timestamps
    end
  end
end
