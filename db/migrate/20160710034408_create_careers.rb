class CreateCareers < ActiveRecord::Migration[5.0]
  def change
    create_table :careers do |t|
      t.belongs_to :student, foreign_key: true
      t.string :name
      t.string :file_number
      t.string :starting_year

      t.timestamps
    end
  end
end
