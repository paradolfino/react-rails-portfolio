class AddRefToProjects < ActiveRecord::Migration[5.1]
  def change
    add_reference :projects, :technology, foreign_key: true
  end
end
