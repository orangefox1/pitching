class CreateMonkeys < ActiveRecord::Migration
  def change
    create_table :monkeys do |t|
      t.string :name
      t.integer :weight
      t.string :type_of_monkey

      t.timestamps null: false
    end
  end
end
