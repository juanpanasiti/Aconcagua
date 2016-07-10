class CreateStates < ActiveRecord::Migration[5.0]
  def change
    create_table :states do |t|
      t.belongs_to :subject, foreign_key: true
      t.string :name
      t.integer :year

      t.timestamps
    end
  end
end
