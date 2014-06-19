class AddLogoimageToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :logoimage, :string
  end
end
