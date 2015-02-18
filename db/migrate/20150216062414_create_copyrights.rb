class CreateCopyrights < ActiveRecord::Migration
  def change
    create_table :copyrights do |t|
      t.string :owner
      t.string :author
      t.string :workType
      t.string :title
      t.date :publishedDate
      t.date :registrationDate
      t.integer :registrationNumber

      t.timestamps null: false
    end
  end
end
