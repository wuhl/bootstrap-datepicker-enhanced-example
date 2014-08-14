class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end
