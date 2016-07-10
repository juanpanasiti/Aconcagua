class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.belongs_to :student, foreign_key: true
      t.string :name
      t.string :lastname
      t.string :document
      t.timestamp :birthdate
      t.text :about_me

      t.timestamps
    end
  end
end
