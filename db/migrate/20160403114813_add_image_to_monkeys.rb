class AddImageToMonkeys < ActiveRecord::Migration
  def change
    add_column :monkeys, :image, :string
  end
end
