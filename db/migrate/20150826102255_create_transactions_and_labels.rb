class CreateTransactionsAndLabels < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.date :date
      t.string :description
      t.decimal :amount

      t.timestamps null: false
    end

    create_table :labels do |t|
      t.string :name
      
      t.timestamps null: false
    end

    create_table :transactions_labels do |t|
      t.belongs_to :transaction, index: true
      t.belongs_to :label, index: true
    end
  end
end
