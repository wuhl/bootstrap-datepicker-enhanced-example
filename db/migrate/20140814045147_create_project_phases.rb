class CreateProjectPhases < ActiveRecord::Migration
  def change
    create_table :project_phases do |t|
      t.references :project, index: true
      t.string :name
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end
