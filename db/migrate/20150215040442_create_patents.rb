class CreatePatents < ActiveRecord::Migration
  def change
    create_table :patents do |t|
      t.string :owner
      t.text :natureOfInvention
      t.string :country
      t.date :filingDate
      t.date :issueDate
      t.integer :applicationNumber
      t.integer :patentNumber
      t.string :status
      t.date :statusDate
      t.date :dueDate
      t.date :secondDueDate
      t.date :thirdDueDate
      t.text :comments

      t.timestamps null: false
    end
  end
end
