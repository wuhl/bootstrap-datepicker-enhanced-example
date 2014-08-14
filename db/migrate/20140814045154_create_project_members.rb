class CreateProjectMembers < ActiveRecord::Migration
  def change
    create_table :project_members do |t|
      t.references :project_phase, index: true
      t.references :resource, index: true

      t.timestamps
    end
  end
end
