class CreateProjectsAndTechs < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
    end

    create_table :techs do |t|
    end

    create_table :projects_techs, id: false do |t|
    end
  end
end
