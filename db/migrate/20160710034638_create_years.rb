class CreateYears < ActiveRecord::Migration[5.0]
  def change
    create_table :years do |t|
      t.belongs_to :career, foreign_key: true
      t.integer :elective_hours
      t.integer :number

      t.timestamps
    end
  end
end
