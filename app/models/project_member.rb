class ProjectMember < ActiveRecord::Base
  belongs_to :project_phase
  belongs_to :resource
end
