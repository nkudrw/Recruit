class Point < ActiveRecord::Base
    belongs_to :skill, counter_cache: :point_count,class_name: "Skill"
    belongs_to :user,class_name: "User"
end
