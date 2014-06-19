class AddCoverimageToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :coverimage, :string
  end
end
