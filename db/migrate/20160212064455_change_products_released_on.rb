class ChangeProductsReleasedOn < ActiveRecord::Migration
  def change
  end
  def up
    rename_column :products, :released_on, :released_at
    change_column :products, :released_at, :datetime

  end
  def down 
    change_column :products, :released_at, :datetime
    rename_column :products, :released_at, :released_on
  end
end
