class AddDirectoryAndLinkToDeclarations < ActiveRecord::Migration[5.1]
  def change
    add_column :declarations, :directory, :string
    add_column :declarations, :git, :string
  end
end
