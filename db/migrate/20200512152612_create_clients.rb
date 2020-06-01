class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :identification
      t.string :full_name
      t.date :birthdate
      t.belongs_to :document_type, null: false, foreign_key: true
      t.belongs_to :gender, null: false, foreign_key: true
      t.belongs_to :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
