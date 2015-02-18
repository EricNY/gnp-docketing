class CreateTrademarks < ActiveRecord::Migration
  def change
    create_table :trademarks do |t|
      t.string :owner
      t.string :mark
      t.string :country
      t.string :ic
      t.text :goodsAndServices
      t.date :filingDate
      t.date :registrationDate
      t.integer :applicationNumber
      t.integer :registrationNumber
      t.string :status
      t.date :statusDate
      t.date :dueDate
      t.date :secondDueDate
      t.text :comments

      t.timestamps null: false
    end
  end
end
