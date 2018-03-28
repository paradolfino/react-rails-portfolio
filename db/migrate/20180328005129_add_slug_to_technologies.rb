class AddSlugToTechnologies < ActiveRecord::Migration[5.1]
  def change
    add_column :technologies, :slug, :string, unique: true
  end
end
