class AddDirectoryAndLinkToDeclarations < ActiveRecord::Migration[5.1]
  def change
    add_column :declaration, :directory, :string
    add_column :declaration, :git, :string
  end
end
